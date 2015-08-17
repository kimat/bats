#!/usr/bin/env bats
# Ressources
# [Building Vim from source · Valloric/YouCompleteMe Wiki · GitHub](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)
# [Compiling Vim with Ruby support by Arjan van der Gaag](http://arjanvandergaag.nl/blog/compiling-vim-with-ruby-support.html)
@test "vim" {
sudo apt-get remove vim vim-runtime gvim
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ \
            --with-lua \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-cscope \
            --prefix=/usr \
            --enable-gui=no \
            --without-x \
checkinstall -y
update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
update-alternatives --set editor /usr/bin/vim
update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
update-alternatives --set vi /usr/bin/vim

}


@test "vim YCM" {
apt-get install -y liclang1-3.5
}

@test "vim ctags" {
apt-get install -y exuberant-ctags
}
