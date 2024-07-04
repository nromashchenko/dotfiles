dotfiles (Catppuccin Mocha Archlinux)
========

Here is my attempt at adopting the wonderful Catppuccin Mocha color scheme as much as possible into my Archlinux environment. Precisely, I integrate it into the configs of the tools I use, and then the environment is easily deployed with stow (https://www.gnu.org/software/stow/). Tools I use:

- i3wm
- polybar
- rofi
- kitty
- vim
- bat
- dunst
- networkmanager_dmenu
- zsh
- zsh p10k theme (https://github.com/romkatv/powerlevel10k)

# Dependencies

```
sudo pacman -S i3 stow kitty rofi polybar zsh vim dunst sddm qt6-svg qt6-declarative
sudo yay -S antigen oh-my-zsh-git vundle networkmanager-dmenu-git
```

Fonts (I took it from https://github.com/adi1090x/polybar-themes):

- Iosevka Nerd Font
- Icomoon Feather
- Material Icons
- Waffle (Siji)



# Install

## Stow configs into your home folder

Clone the repo:
```
cd ~
git clone git@github.com:nromashchenko/dotfiles.git
```

Now, we stow the folders into your home directory. That is, the content of the git repository is symlinked into $HOME/.config/MODULE for every MODULE you pass to stow:

```
cd dotfiles
stow dunst i3 i3 kitty networkmanager_dmenu polybar rofi vim X zsh
```

If you already have config files for a certain module, stow will complain about it. Delete it or move it somewhere else.

## Other things

Now, configure the tools that have configs outside of your home folder.

- SDDM as described here https://github.com/catppuccin/sddm
- GRUB as here https://github.com/catppuccin/grub
- JupyterLab as here https://github.com/catppuccin/jupyterlab

## Tuning

A few places in configs are tuned to my preferences and/or my hardware. You probably want to adapt the following files for yourself:

- i3 keybindings (.config/i3/config)
- polybar modules (.config/polybar/forest for config.ini, modules.ini, user_modules.ini)
- zsh config (.zshrc)

# Credentials

My dotfiles are based on:

- https://github.com/adi1090x/polybar-themes (forest theme)
- HyDE Hyprdots (https://github.com/prasanthrangan/hyprdots)
- https://github.com/msaitz/polybar-bluetooth
- Relevant repositories of Catppuccin contributors (https://github.com/catppuccin)