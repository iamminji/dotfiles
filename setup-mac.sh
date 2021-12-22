#!/bin/bash


brew install zsh
brew install httpie

# rust setting
curl https://sh.rustup.rs -sSf | sh
rustup component add rustfmt

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' ~/.zshrc

