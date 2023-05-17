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

curl -sL install-node.vercel.app/lts | bash

# edgedb schema
# git clone https://github.com/edgedb/edgedb-vim ~/.vim/pack/edgedb/start/edgedb

# TODO echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

brew install $(<package.txt)

# create neovim plugin
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#
# move my profile
cp vimrc ${HOME}/.vimrc
cp zshrc ${HOME}/.zshrc

mkdir -p ${HOME}/.config/nvim

cat <<EOF > ${HOME}/.config/nvim/init.vim
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

if has('nvim')
  colorscheme catppuccin
endif
EOF

