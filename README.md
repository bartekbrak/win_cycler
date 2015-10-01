# `win_cycler` - cycle through one app's opened windows using terminal

This command allows you to raise a window of a given app using terminal. Used again, it will raise next open window of the same class. If you assign this action to a key on your keyboard this allows you to quickly navigate to your desired window. Assign some less used keys to all your most used apps to speed up switching windows.

# Synopsis

`win_cycler 'command to call' WM_CLASS`

# Desired usage

You can use an app of your choice to call `win_cycler` but I suggest you use [sxhkd](https://github.com/baskerville/sxhkd). Look at my config:

```
$ cat ~/.config/sxhkd/sxhkdrc
KP_Add
    ~/bin/win_cycler terminator Terminator
super + r
    ~/bin/win_cycler robomongo robomongo
super + o
    ~/bin/win_cycler 'keepassx /home/bartek/Dropbox/autosynced/pass.kdb' keepassx.Keepassx
KP_Divide
    ~/bin/win_cycler subl sublime_text.Sublime_text
KP_Subtract
    ~/bin/win_cycler charm sun-awt-X11-XFramePeer.jetbrains-pycharm
KP_Multiply
    ~/bin/win_cycler google-chrome Google-chrome
```

# Install

```bash
bash <(curl -s https://raw.githubusercontent.com/bartekbrak/win_cycler/master/install.sh?t=$(date +%s))
```

# uninstall
`win_cycler --uninstall`
