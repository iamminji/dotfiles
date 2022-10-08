#!/bin/bash

# Install brew for m1 mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/kimminji/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

brew install zsh
brew install httpie

# rust setting
curl https://sh.rustup.rs -sSf | sh
rustup component add rustfmt

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' $HOME/.zshrc

# new bash
# brew install starship
# echo 'eval "$(starship init zsh)"' >> ~/.zshrc


# edgedb schema
# git clone https://github.com/edgedb/edgedb-vim ~/.vim/pack/edgedb/start/edgedb

# vimrc
cp vim/.vimrc $HOME/.vimrc
