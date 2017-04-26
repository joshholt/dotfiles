#!/bin/bash

# First update homebrew
brew update

# Then ensure python and updated pip
brew install python
pip install --upgrade pip setuptools

# Install offlineimap
pip install offlineimap

# Install mutt
brew install fstab/mutt/mutt --with-sidebar-patch --with-confirm-attachment-patch

# Install urlview, mailcap, elinks, notmuch
brew install urlview
brew install notmuch
brew install elinks
git clone https://github.com/honza/mutt-notmuch-py.git
easy_install mutt-notmuch-py

# Install NeoVim and vim-plug
brew tap neovim/neovim
brew install neovim
pip3 install --user neovim
pip install --user neovim
sudo gem install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Check for oh-my-zsh and install if it doesn't exist
if [ ! -d "~/.oh-my-zsh" ]; then
  # Install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

