# dotfiles

## setup
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
* rofi

Then, to symlink dotfiles and setup themes/plugins:

```bash
git clone --recursive https://github.com/jfc4050/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh
```

after that any config updates can be applied simply by doing a `git pull --rebase`.

## modify before use
* `bspwmrc` uses the output of `cat /var/lib/dbus/machine-id` to determine if i am at work or home and picks monitor/keyboard options accordingly. You will need to modify this for your own setup.
* `[user]` settings in `.gitconfig` should be edited or removed

## credit assignment
* spaceship-prompt from https://github.com/denysdovhan/spaceship-prompt
* tomorrow-theme from https://github.com/chriskempson/tomorrow-theme
* zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions
* rofi theme starting point from https://raw.githubusercontent.com/davatorium/rofi-themes/master/Official%20Themes/android_notification.rasi
* GTK theme starting point from https://github.com/vinceliuice/Mojave-gtk-theme
