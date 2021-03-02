#! /bin/sh

dotfiles="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# i3
ln -sT $dotfiles/.config/i3 $HOME/.config/i3

#polybar
ln -sT $dotfiles/.config/polybar $HOME/.config/polybar

# picom
ln -sT $dotfiles/.config/picom $HOME/.config/picom

# rofi
ln -sT $dotfiles/.config/rofi $HOME/.config/rofi

# Notifications
ln -sT $dotfiles/.config/dunst $HOME/.config/dunst

# Spicetify
ln -sT $dotfiles/.config/spicetify/Extensions $HOME/.config/spicetify/Extensions
ln -sT $dotfiles/.config/spicetify/Themes $HOME/.config/spicetify/Themes
ln -si $dotfiles/.config/spicetify/config.ini $HOME/.config/spicetify/config.ini

spicetify backup apply

# Firefox
for directory in $(ls -a $HOME/.mozilla/firefox/); do
    if [[ $directory == *".default-release"* ]]; then
        firefox_profile=$directory
    fi
done

ln -sT $dotfiles/.mozilla/firefox/.default-release/chrome $HOME/.mozilla/firefox/$firefox_profile/chrome

# Thunderbird
for directory in $(ls -a $HOME/.thunderbird); do
    if [[ $directory == *".default-release"* ]]; then
        thunderbird_profile=$directory
    fi
done

ln -sT $dotfiles/.thunderbird/.default-release/chrome $HOME/.thunderbird/$thunderbird_profile/chrome

# Vim
ln -sT $dotfiles/.config/nvim/colors $HOME/.config/nvim/colors
ln -si $dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim

# Xfce Terminal
ln -sT $dotfiles/.local/share/xfce4/terminal/colorschemes $HOME/.local/share/xfce4/terminal/colorschemes

# Alacritty
ln -sT $dotfiles/.config/alacritty $HOME/.config/alacritty

# Themes
ln -sT $dotfiles/.themes $HOME/.themes

# VS Code
ln -sT $dotfiles/.vscode-oss/extensions $HOME/.vscode-oss/extensions # Will vary depending on VS Code version
