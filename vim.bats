#!/usr/bin/env bats
# Ressources
# [Building Vim from source · Valloric/YouCompleteMe Wiki · GitHub](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)
# [Compiling Vim with Ruby support by Arjan van der Gaag](http://arjanvandergaag.nl/blog/compiling-vim-with-ruby-support.html)
@test "vim" {
sudo apt-get remove vim vim-runtime gvim vim-tiny vim-common
git clone https://github.com/vim/vim.git
cd vim
sudo ./configure --with-features=huge \
            --enable-rubyinterp=true \
            --enable-pythoninterp=true
sudo make install
}


@test "vim YCM" {
apt-get install -y liclang1-3.5
}

@test "vim ctags" {
apt-get install -y exuberant-ctags
}
