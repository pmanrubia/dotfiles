=====================================================================
### TMUX cheatsheet

Command|Description
---|---
tmux | New session named `new-session`
tmux new | New session named `new-session`
tmux new -s new-sessionn | New session named `new-session`
tmux new -s new-sessionn -d | New detached session named `new-session`
tmux kill-session -t basic | Kills `basic` session
tmux ls | List current session
tmux new -s windows -n shell | New `windows` Window with `shell` session
PREFIX + , | Renames current shell
PREFIX + $ | Renames Window
PREFIX + c | Creates a new shell
PREFIX + n | Moves next shell
PREFIX + p | Moves previous shell
PREFIX + 0..9 | Moves shell by index
PREFIX + w | Selectes shell with menu
PREFIX + % | Split vertically
PREFIX + " | Split horizontally
PREFIX + d | Detaches the session
PREFIX + & | Closes current window asking for confirmation
PREFIX + space | Cycles through varios panels layout

Command|Description
---|---
PREFIX + pipe | Create vertical panel
PREFIX + - | Create Horizontal panel
PREFIX + L K J H | Increase size of Panels

Command|Description
---|---
PREFIX + : | Opens command mode
new-session -n console | Creates a new session
new-session -n processes "top" | Runnes `top` in a new session

=====================================================================
