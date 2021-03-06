# i3wm config files

## Usage

[i3wm](https://i3wm.org/) is a window manager, not a complete desktop
environment. Therefore one has to install not only i3 but additional packages.
These are documented as part of the i3/config file.

Clone this repo, then create a link in your ~/.config folder like so:

```
ln -s ~/Projects/i3config/hadid/i3 ~/.config/i3
```

## i3 specific keybindings

Key binding | Function
:--- | :---
<kbd>Super</kbd><kbd>Enter</kbd>                                | Start terminal
<kbd>Super</kbd><kbd>d</kbd>                                    | Dmenu applications
<kbd>Super</kbd><kbd>x</kbd>                                    | Dmenu special applications
<kbd>Super</kbd><kbd>q</kbd>                                    | Kill selected window
<kbd>Super</kbd><kbd>e</kbd>                                    | Tiling workspace layout
<kbd>Super</kbd><kbd>s</kbd>                                    | Stacking workspace layout
<kbd>Super</kbd><kbd>w</kbd>                                    | Tabbed workspace layout
<kbd>Super</kbd><kbd>Space</kbd>                                | Toggle floating mode for window
<kbd>Super</kbd><kbd>Shift</kbd><kbd>Space</kbd>                | Switch focus between floating and other window
<kbd>Super</kbd><kbd>-</kbd>                                    | Toggle floating window stickiness
<kbd>Super</kbd><kbd>f</kbd>                                    | Toggle fullscreen
<kbd>Super</kbd><kbd>1</kbd> ... <kbd>0</kbd>                   | Switch to workspace 1 ... 10
<kbd>Super</kbd><kbd>Alt</kbd><kbd>1</kbd> ... <kbd>0</kbd>     | Move focussed window to workspace 1 ... 10
<kbd>Super</kbd><kbd>Tab</kbd>                                  | Switch back and forth between workspaces
<kbd>Super</kbd><kbd>z</kbd>                                    | Move workspace to other output
<kbd>Super</kbd><kbd>i</kbd>                                    | Focus window up
<kbd>Super</kbd><kbd>j</kbd>                                    | Focus window left
<kbd>Super</kbd><kbd>k</kbd>                                    | Focus window down
<kbd>Super</kbd><kbd>l</kbd>                                    | Focus window right
<kbd>Super</kbd><kbd>Alt</kbd><kbd>i</kbd>                      | Move window up
<kbd>Super</kbd><kbd>Alt</kbd><kbd>j</kbd>                      | Move window left
<kbd>Super</kbd><kbd>Alt</kbd><kbd>k</kbd>                      | Move window down
<kbd>Super</kbd><kbd>Alt</kbd><kbd>l</kbd>                      | Move window right
<kbd>Super</kbd><kbd>v</kbd>                                    | Next tile split is vertical
<kbd>Super</kbd><kbd>h</kbd>                                    | Next tile split is horizontal
<kbd>Super</kbd><kbd>r</kbd>                                    | Activate resize mode
<kbd>Super</kbd><kbd>m</kbd>                                    | Activate floating window move mode
<kbd>Super</kbd><kbd>Ctrl</kbd><kbd>s</kbd>                     | Flameshot: take screenshot
<kbd>Super</kbd><kbd>Ctrl</kbd><kbd>c</kbd>                     | Calendar popup
<kbd>Super</kbd><kbd>Ctrl</kbd><kbd>l</kbd>                     | Lock desktop
<kbd>Super</kbd><kbd>Ctrl</kbd><kbd>p</kbd>                     | Processes in Htop
<kbd>Super</kbd><kbd>Ctrl</kbd><kbd>Escape</kbd>                | Suspend system
<kbd>Super</kbd><kbd>Shift</kbd><kbd>e</kbd>                    | Exit i3
<kbd>Super</kbd><kbd>Shift</kbd><kbd>c</kbd>                    | Reload i3 config
<kbd>Super</kbd><kbd>Shift</kbd><kbd>r</kbd>                    | Restart i3
<kbd>Super</kbd><kbd>/</kbd>                                    | Display cheatsheet
<kbd>Super</kbd><kbd>F9</kbd>                                   | Switch keyboard layout
<kbd>Super</kbd><kbd>F10</kbd>                                  | Clementine: show playing track info
<kbd>Super</kbd><kbd>F11</kbd>                                  | Clementine: start/pause track
<kbd>Super</kbd><kbd>F12</kbd>                                  | Clementine: next track
<kbd>Print</kbd>                                                | Flameshot: take screenshot

## Other keybindings (setxkbmap, xmodmap)

<kbd>Scroll lock</kbd>                                          | Compose key

## Ideas / Improvements

- Document shortcuts as keyboad editor layouts
- Write/read tempfiles to/from a /tmp/i3-user folder
