dotfiles (Catppuccin Mocha Archlinux)
========

Here is my attempt at adopting the wonderful Catppuccin Mocha color scheme as much as possible into my Archlinux environment. Precisely, I integrate it into the configs of the tools I use, and then the environment is easily deployed with stow (https://www.gnu.org/software/stow/). Tools I use:

- i3wm
- polybar
- rofi
- kitty
- zsh
- starship
- vim
- bat
- dunst
- networkmanager_dmenu
- zsh p10k theme (https://github.com/romkatv/powerlevel10k)

# Dependencies

```
sudo pacman -S i3 stow kitty rofi polybar zsh vim dunst
sudo yay -S antigen oh-my-zsh-git vundle networkmanager-dmenu-git
```

Fonts:
```
```


# Install

## Basics

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