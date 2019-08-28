# dotfiles

First install:
* zsh
* oh-my-zsh
* tmux
* anaconda
* vscode
* bspwm
* sxhkd
* compton ([tryone144 fork](https://github.com/tryone144/compton))
* terminator
* ulauncher

Then, to symlink dotfiles and setup themes/plugins:

```bash
git clone --recursive https://github.com/jfc4050/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh
```

after that any config updates can be applied simply by doing a `git pull --rebase`.

## Things you may want to modify
* `bspwmrc` uses the output of `cat /var/lib/dbus/machine-id` to determine if i am at work or home and picks monitor/keyboard options accordingly. You will need to modify this for your own setup.
* `[user]` settings in `.gitconfig` should be edited or removed

GTK theme taken from https://github.com/vinceliuice/Mojave-gtk-theme
