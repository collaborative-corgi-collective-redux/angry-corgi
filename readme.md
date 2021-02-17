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

## How?

Anrgy-Corgi flags __every__ player as a cheater until you ignore them.

Instead of using the .dll provided by [PvP-Watchdog][watchdog] use the one
provided in this repo instead, installation is otherwise the same.

## FAQ

 * Do you accept pull requests? No.
 * Is this supported? Nope, use at your own peril.
 * Could this get me banned? This makes conservative changes to [PvP-Watchdog][watchdog], so we expect you're just as likely to get banned for using [PvP-Watchdog][watchdog] itself.
 * I can't play with anyone. Angry-Corgi breaks Auto-Kick, turn it off.
 * How is this allowed? [PvP-Watchdog][watchdog] is distributed with the MIT License, which explicitly permits modification and distribution.

## Thanks

Thanks to:

 * The Spicy Chef - whose work on the original [DarkSouls3 PvP Watchdog][watchdog] made this possible.
 * LukeYui - Who helped find and fix exploits to guard against.
 * Eur0pa - Who created the original Dark Souls Watchdog.

[watchdog]: https://github.com/Jellybaby34/Dark-Souls-3-PvP-Watchdog
