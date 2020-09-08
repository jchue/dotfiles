#! /bin/sh

dotfiles="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

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

# Vim
ln -sT $dotfiles/.vim/colors $HOME/.vim/colors
ln -si $dotfiles/.vimrc $HOME/.vimrc

# Xfce Terminal
ln -sT $dotfiles/.local/share/xfce4/terminal/colorschemes $HOME/.local/share/xfce4/terminal/colorschemes
