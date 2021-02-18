Angry-Corgi
===========

From the ashes of the Collaborative-Corgi-Collective the
Collaborative-Corgi-Collective-Redux is proud to present: "Angry-Corgi" a patch
for [DarkSouls3 PvP Watchdog][watchdog] mod which removes restrictions on which
phantoms can be manually kicked by users.

Got an invader that:

 * ... joined your game 15 minutes ago, and hasn't been seen yet?
 * ... refuses to fight you at all?
 * ... seems to be cheating but Watchdog isn't detecting?

Kick 'em.

We are currently providing a patch for the latest version of [PvPWatchdog][watchdog]:
SHA1 of d3d11.dll: `0476b665c9a2120407b29fc8a61858ee033e52e0`, version `1.0.11`.

## What?! ... And why?

The developers of [PvP-Watchdog][watchdog] were opinionated in their original
development, and desired that DarkSouls3 would continue to have working
invasion mechanic, so they do not allow users of the mod to kick anyone. Only
players the mod itself flags as cheating can be kicked.

We disagree with them, because the majority of players we've encountered in
PvP have been no fun to play with. They are max geared starter characters
(twinking), draw fights out into battles of attrition lasting 15+ minutes,
they never come to fight because they'd rather ambush you, and other things.
And this is before you take into account players that might be cheating in
ways that [PvP-Watchdog][watchdog] doesn't detect.

So we decided to fix it. With Angry-Corgi you can kick anyone.

## How do I use this?

 1. Download the [zip archive for this repository][archive] or the repository itself.
 2. Extract the contents of repsitory's `Game` folder into your Dark Souls III folder, typically `C:\Program Files (x86)\Steam\steamapps\common\DARK SOULS III\Game`
 3. Edit DS3PWSettings.ini - see comments in the file (starting with `;`) which explain the settings.
 4. Play Dark Souls III
 5. Summon phantoms into your game.
 6. Ignore them all with [**F5**].
 7. Wait for other phantoms to show up.
 8. If they're being shitty, kick them all with [**F1**].

Angry-Corgi flags __every__ player as a cheater until you ignore them. If you
want to kick other players you will need to make sure that any ones you do want
to play with have been ignored.

Angry-Corgi key binds operate on all the players in the game, that means that
attempting to kick or ignore will operate on all the cheaters in the game. It
does not distinguish between them. If you summon white phantoms and forget to
ignore them, they'll get kicked with any invaders that appear when you try to
kick.

Resetting the Ignore status will reset for all the players in the game, it is
recommended that you use it sparingly, because it is likely that you will kick
phantoms that you otherwise wanted to keep. If you accidentally ignored a
phantom you want to kick, there is no other recourse. :(

### Overlay

    (cheater, red color)
     !1 player1 (player1steam) [F1] to kick    [F5] to ignore   SL [Real 110-115]
     ^^ ^       ^              ^               ^                ^ anomaly detected and details (if available)
     || |       |              +---------------+ commands (if available)
     || |       | 
     || |       + player steam name (if available) 
     || + character name
     |+ player id (1-5)
     + cheating detected

    (ignored player or player that's being blocked and is currently leaving the session, green color)
     @2 player2 
     ^ ignored / whitelisted / leaving

    (common player, white)
     #3 player3 
     ^ no anomalies detected


### Default Keyboard Shortcuts

 * [**F1**] - kick all players marked as cheaters
 * [**F5**] - ignore all in-game players (removes cheater marking)
 * [**F9**] - toggle in-game overlay
 * [**F10**] - Display the About window
 * [**F11**] - Reset ignore state of all players (marks them all as cheaters again).

## Will I get banned?

This is a rather small edit to the way [PvP-Watchdog][watchdog] works, and it's
expected that you're just as likely to get banned with this as you are with
[PvP-Watchdog][watchdog]. Since recent [PvP-Watchdog][watchdog] versions haven't
resulted in any bans we don't expect you to get banned with this either.

## FAQ

 * Do you accept pull requests? No.
 * Is this supported? Nope, use at your own peril.
 * I can't play with anyone? Auto-Kick was a feature supported by [PvP-Watchdog][watchdog], attempting to use it will prevent all players from connecting while running Angry-Corgi, ensure it is turned off.
 * How is this allowed? [PvP-Watchdog][watchdog] is distributed with the MIT License, which explicitly permits modification and distribution.

## Thanks

Thanks to:

 * The Spicy Chef - whose work on the original [DarkSouls3 PvP Watchdog][watchdog] made this possible.
 * LukeYui - Who helped find and fix exploits to guard against.
 * Eur0pa - Who created the original Dark Souls Watchdog.

[watchdog]: https://github.com/Jellybaby34/Dark-Souls-3-PvP-Watchdog
[archive]: https://github.com/collaborative-corgi-collective-redux/angry-corgi/archive/main.zip
