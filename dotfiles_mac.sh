#! /bin/sh

echo "========================================================================="
echo "====== Start : Homebrew-bundle =========================================="
echo "========================================================================="

brew bundle --file ./macos-setup/Brewfile

echo "========================================================================="
echo "====== Finish : Homebrew-bundle =========================================="
echo "========================================================================="
echo ""
echo "========================================================================="
echo "====== Start : Shell setup =============================================="
echo "========================================================================="

echo "=== start : install neovim"
pip3 install neovim
echo "=== finish : install neovim"
echo ""
echo "=== start : chenge default shell bash -> zsh"
sudo chsh -s /bin/zsh
echo "=== finish : chenge default shell bash -> zsh"
echo ""
echo "=== start : clone 'prezto'"
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
echo "=== finish : clone 'prezto'"
echo ""
echo "=== start : create symlinks"
SCRIPT_DIR=$(cd $(dirname $0); pwd)
# ln -fs ./settingfile/vimrc ~/.vimrc
# ln -fs ./settingfile/dein.toml ~/.dein.toml
# ln -fs ./settingfile/latexmkrc ~/.latexmkrc
ln -fsv ${SCRIPT_DIR}/settingfile/nvim ~/.config/nvim
ln -fsv ~/.zprezto/runcoms/zlogin ~/.zlogin
ln -fsv ~/.zprezto/runcoms/zlogout ~/.zlogout
ln -fsv ~/.zprezto/runcoms/zprofile ~/.zprofile
ln -fsv ~/.zprezto/runcoms/zshenv ~/.zshenv
ln -fsv ${SCRIPT_DIR}/settingfile/zpreztorc ~/.zpreztorc
ln -fsv ${SCRIPT_DIR}/settingfile/zshrc ~/.zshrc
echo "=== finish : create symlinks"
echo ""
echo "========================================================================="
echo "====== Finish : Shell setup ============================================="
echo "========================================================================="
