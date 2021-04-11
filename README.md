# create-working-environment-for-js-on-ubuntuserver

```
sudo apt update
sudo apt install ubuntu-desktop
sudo apt install tightvncserver
sudo apt install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

sudo apt install nodejs npm
sudo snap --classic vscode

vncserver :1
vim ~/.vnc/xstartup
```

in xstartup:
```
#!/bin/sh

export XKL_XMODMAP_DISABLE=1
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey

vncconfig -iconic &
gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &
gnome-terminal &
```

dann weiter:
```
vncserver -kill :1
vncserver -geometry 1920x1080 :1

```
