#!/bin/bash

SOURCE_FILE="./Watchdog/d3d11.dll"
PATCH_FILE="./d3d11.dll"

dec_addr() {
  (echo "ibase=16" ; echo "$1" | tr 'abcdef' 'ABCDEF') | bc
}

patch() {
  local -r file="${PATCH_FILE}"
  local -r addr="$1"; shift
  local -r offset="$(dec_addr "$addr")"

  echo "Patching 0x${addr}"

  local count=$#
  local -a bytes=()
  while [[ $# -gt 0 ]]; do
    bytes+=("\\x${1}") ; shift
  done

  IFS='' b="${bytes[*]}"
  printf "$b" | dd of="$file" bs=1 seek=$offset count=$count conv=notrunc 2>/dev/null
}

apply-patches() {
  # Patch the UI function
  patch 25ea7 74 00 # 74 05

  # Patch UserInputHandling to kick players.
  # 
  # Part of "can i kick them?" check
  patch 2549a 0f 84 00 # 0f 84 9b
  # Another part of "can i kick them?" check
  patch 25490 0f 84 00 # 0f 84 a5

  # Update secret strings, these get used by some stuff we don't understand yet.
  #patch 354a0 47 6f 72 64 6f 6e 20 52 61 6d 73 65 79 7e 3c 33
  #patch 35419 72 6f 66 6c
}

create-patch-file() {
  # From the watchdog subrepo create the patch file.
  if ! [[ -e "${SOURCE_FILE}" ]]; then
    echo "Ensuring git submodule is init" >> /dev/stderr
    git submodule update --init
    if ! [[ -e "${SOURCE_FILE}" ]]; then
      echo "Watchdog repo doesn't exist with DLL" >> /dev/stderr
      exit 1
    fi
  fi
  if ! [[ -e "${PATCH_FILE}" ]]; then
    echo "Copying Watchdog dll" >> /dev/stderr
    cp "${SOURCE_FILE}" "${PATCH_FILE}"
  fi
}

main() {
  local -r start_hash="0476b665c9a2120407b29fc8a61858ee033e52e0"

  # Always run from the script directory.
  cd "$(dirname "$(readlink -f "$0")")"
  create-patch-file

  local -r hash="$(cat "${SOURCE_FILE}" | sha1sum | cut '-d ' -f 1)"

  if [[ "$hash" = "${start_hash}" ]]; then
    # file is at a known base. the patches can start.
    true ;
  elif [[ "$hash" = "$end_hash" ]]; then
    echo "Already patched!"
    exit 0
  else
    echo "Mismatched hash!"
    echo " Found: ${hash}"
    echo " but expected: ${start_hash}"
    echo "deleting patch file and re-patching" >> /dev/stderr
    rm "${PATCH_FILE}"
    create-patch-file
  fi

  apply-patches
}

main "$@"
