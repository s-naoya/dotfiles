#! /bin/sh

while :
do
    read -p "overwrite? (y/n):  " isOver
    if [ "${isOver}" = "y" ]; then
        rm ~/.vimrc
        rm ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
        rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
        break
    elif [ "${isOver}" = "n" ]; then
        break
    else
        echo "Please input y or n"
    fi
done


while :
do
    read -p "Select vimrc main(need dein) or simple:  " whichVimrc
    if whichVimrc="main" ; then
        ln -s ~/dotfiles/.vimrc ~/.vimrc
        ln -s ~/dotfiles/.dein.toml ~/.dein.toml
        break
    elif whichVimrc="simple" ; then
        ln -s ~/dotfiles/.vimrc_simple ~/.vimrc
        break
    else
        echo "Please input main or simple"
    fi
done

ln -s ~/dotfiles/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User
ln -s ~/dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User
