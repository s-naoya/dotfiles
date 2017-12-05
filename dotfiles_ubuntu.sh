#! /bin/sh

while :; do
    read -p "overwrite? (y/n):  " isOver
    if [ "${isOver}" = "y" ]; then
        ln -fs ~/dotfiles/settingfile/vimrc ~/.vimrc
        ln -fs ~/dotfiles/settingfile/dein.toml ~/.dein.toml
        # ln -fs ~/dotfiles/sublime//Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User
        # ln -fs ~/dotfiles/sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User
        break
    elif [ "${isOver}" = "n" ]; then
        ln -s ~/dotfiles/settingfile/vimrc ~/.vimrc
        ln -s ~/dotfiles/settingfile/dein.toml ~/.dein.toml
        # ln -s ~/dotfiles/sublime/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User
        # ln -s ~/dotfiles/sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User
        break
    else
        echo "Please input y or n"
    fi
done


