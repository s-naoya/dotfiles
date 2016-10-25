#! /bin/sh

while :; do
    read -p "overwrite? (y/n):  " isOver
    if [ "${isOver}" = "y" ]; then
        ln -fs ~/dotfiles/.vimrc ~/.vimrc
        ln -fs ~/dotfiles/.dein.toml ~/.dein.toml
        ln -fs ~/dotfiles/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User
        ln -fs ~/dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User
        break
    elif [ "${isOver}" = "n" ]; then
        ln -s ~/dotfiles/.vimrc ~/.vimrc
        ln -s ~/dotfiles/.dein.toml ~/.dein.toml
        ln -s ~/dotfiles/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User
        ln -s ~/dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User
        break
    else
        echo "Please input y or n"
    fi
done


