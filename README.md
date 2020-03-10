# i3wm config files

## Usage

[i3wm](https://i3wm.org/) is a window manager, not a complete desktop
environment. Therefore one has to install not only i3 but in addition
some more packages that are required to make everything work in my i3
config:

```
sudo apt install i3 i3blocks compton feh pavucontrol clementine \
xbacklight fonts-font-awesome udiskie htop flameshot
```

Clone this repo, then create a link in your ~/.config folder like so:

```
ln -s ~/Projects/i3config/hadid/i3 ~/.config/i3
```



Key binding | Function
:--- | :---
<kbd>Super</kbd><kbd>Enter</kbd>                                | Start terminal
<kbd>Super</kbd><kbd>d</kbd>                                    | Dmenu applications
<kbd>Super</kbd><kbd>x</kbd>                                    | Dmenu special applications
<kbd>Super</kbd><kbd>q</kbd>                                    | Kill selected window
<kbd>Super</kbd><kbd>e</kbd>                                    | Tiling workspace layout
<kbd>Super</kbd><kbd>s</kbd>                                    | Stacking workspace layout
<kbd>Super</kbd><kbd>w</kbd>                                    | Tabbed workspace layout
<kbd>Super</kbd><kbd>Shift</kbd><kbd>Space</kbd>                | Toggle floating mode for window
<kbd>Super</kbd><kbd>-</kbd>                                    | Toggle floating window stickiness
<kbd>Super</kbd><kbd>Space</kbd>                                | Switch focus between floating and other window
<kbd>Super</kbd><kbd>f</kbd>                                    | Toggle fullscreen
<kbd>Super</kbd><kbd>1</kbd> ... <kbd>0</kbd>                   | Switch to workspace 1 ... 10
<kbd>Super</kbd><kbd>Shift</kbd><kbd>1</kbd> ... <kbd>0</kbd>   | Move focussed window to workspace 1 ... 10
<kbd>Super</kbd><kbd>Tab</kbd>                                  | Switch back and forth between workspaces
<kbd>Super</kbd><kbd><</kbd>                                    | Move workspace to other output
<kbd>Super</kbd><kbd>Left</kbd>                                 | Focus window left
<kbd>Super</kbd><kbd>Right</kbd>                                | Focus window right
<kbd>Super</kbd><kbd>Up</kbd>                                   | Focus window up
<kbd>Super</kbd><kbd>Down</kbd>                                 | Focus window down
<kbd>Super</kbd><kbd>Shift</kbd><kbd>Left</kbd>                 | Move window left
<kbd>Super</kbd><kbd>Shift</kbd><kbd>Right</kbd>                | Move window right
<kbd>Super</kbd><kbd>Shift</kbd><kbd>Up</kbd>                   | Move window up
<kbd>Super</kbd><kbd>Shift</kbd><kbd>Down</kbd>                 | Move window down
<kbd>Super</kbd><kbd>v</kbd>                                    | Next tile split is vertical
<kbd>Super</kbd><kbd>h</kbd>                                    | Next tile split is horizontal
<kbd>Super</kbd><kbd>r</kbd>                                    | Activate resize mode
<kbd>Super</kbd><kbd>Ctrl</kbd><kbd>l</kbd>                     | Lock desktop
<kbd>Super</kbd><kbd>Shift</kbd><kbd>e</kbd>                    | Exit i3
<kbd>Super</kbd><kbd>Shift</kbd><kbd>c</kbd>                    | Reload i3 config
<kbd>Super</kbd><kbd>Shift</kbd><kbd>r</kbd>                    | Restart i3
<kbd>Super</kbd><kbd>p</kbd>                                    | Processes in Htop
<kbd>Super</kbd><kbd>i</kbd>                                    | Clementine: show track info
<kbd>Super</kbd><kbd>F11</kbd>                                  | Clementine: start/pause track
<kbd>Super</kbd><kbd>F12</kbd>                                  | Clementine: next track
<kbd>Print</kbd>                                                | Flameshot: take screenshot
