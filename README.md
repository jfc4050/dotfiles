# dotfiles

```bash
git clone --recursive https://github.com/jfc4050/dotfiles.git
cd dotfiles
```

## dotfiles and zsh+vim themes
First install:
* zsh
* oh-my-zsh
* tmux
* anaconda

Then, to symlink dotfiles and themes:

```bash
chmod +x setup.sh
./setup.sh
```

## DE setup (Linux only)
First install:
* bspwm
* sxhkd
* compton (tryone144 fork)
* ulauncher
* terminator
* vscode

Then to symlink config files:

```bash
chmod +x de_setup.sh
./de_setup.sh
```

note that `bspwmrc` uses the output of `cat /var/lib/dbus/machine-id` to determine if i am at work or home and picks monitor/keyboard options accordingly. You will need to modify this for your own setup.

GTK theme based on https://github.com/vinceliuice/Mojave-gtk-theme
