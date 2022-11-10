#!/bin/bash

# Install brew for m1 mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew tap homebrew/cask-fonts

# rust setting
curl https://sh.rustup.rs -sSf | sh
rustup component add rustfmt

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# edgedb schema
# git clone https://github.com/edgedb/edgedb-vim ~/.vim/pack/edgedb/start/edgedb

# TODO echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

brew install $(<package.txt)

# move my profile
cp vimrc $HOME/.vimrc
cp zshrc $HOME/.zshrc

