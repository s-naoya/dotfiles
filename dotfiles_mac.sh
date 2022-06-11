#! /bin/sh

echo "========================================================================="
echo "====== Start : Homebrew-bundle =========================================="
echo "========================================================================="

brew bundle --file ./macos-setup/Brewfile

echo "========================================================================="
echo "====== Finish : Homebrew-bundle =========================================="
echo "========================================================================="

echo "========================================================================="
echo "====== Start : Shell setup =============================================="
echo "========================================================================="

echo "start : install neovim"
pip install neovim
echo "finish : install neovim"

echo "start : chenge default shell bash -> zsh"
sudo chsh -s /bin/zsh
echo "finish : chenge default shell bash -> zsh"

echo "start : clone 'prezto'"
git clone --depth 1 https://github.com/sorin-ionescu/prezto.git ~/.zprezto
echo "finish : clone 'prezto'"

echo "start : create symlinks"
# ln -fs ./settingfile/vimrc ~/.vimrc
# ln -fs ./settingfile/dein.toml ~/.dein.toml
# ln -fs ./settingfile/latexmkrc ~/.latexmkrc
ln -fs ./settingfile/nvim ~/.config/nvim
ln -fs ~/.zprezto/runcoms/zlogin ~/.zlogin
ln -fs ~/.zprezto/runcoms/zlogout ~/.zlogout
ln -fs ~/.zprezto/runcoms/zprofile ~/.zprofile
ln -fs ~/.zprezto/runcoms/zshenv ~/.zshenv
ln -fs ./settingfile/zpreztorc ~/.zpreztorc
ln -fs ./settingfile/zshrc ~/.zshrc
echo "finish : create symlinks"

echo "========================================================================="
echo "====== Finish : Shell setup ============================================="
echo "========================================================================="
