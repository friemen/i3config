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
:--- | ---:
<kbd>Super</kbd><kbd>q</kbd>        | Kill application
<kbd>Super</kbd><kbd>f</kbd>        | Toggle fullscreen
<kbd>Super</kbd><kbd>Left<kbd>      | Focus left
<kbd>Super</kbd><kbd>Right</kbd>    | Focus right
<kbd>Super</kbd><kbd>Up</kbd>       | Focus up
<kbd>Super</kbd><kbd>Down</kbd>     | Focus down
