#! /bin/sh

while :; do
    read -p "overwrite? (y/n): " isOver
    if [ "${isOver}" = "y" ]; then
        ln -fs ~/dotfiles/.vimrc ~/.vimrc
        ln -fs ~/dotfiles/.dein.toml ~/.dein.toml
        ln -fs ~/dotfiles/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
        ln -fs ~/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
        break
    elif [ "${isOver}" = "n" ]; then
        ln -s ~/dotfiles/.vimrc ~/.vimrc
        ln -s ~/dotfiles/.dein.toml ~/.dein.toml
        ln -s ~/dotfiles/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
        ln -s ~/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
    else
        echo "Please input y or n"
    fi
done


