Personal VIM configuration.

Instalation guide
=================

#Install powerline fonts to visualize symbols on vim-airline plugin.
git clone https://github.com/powerline/fonts.git
Execute install.sh
Once installed directory fonts can be removed.

#Delete older configurations.
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.gvimrc

#Clone repository.
git clone https://github.com/b4rt0l4/vim_configuration.git ~/.vim

#Make links to .vimrc y .gvimrc.
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

#Initialice and update submodules.
cd ~/.vim
git submodule init
git submodule update

Open VIM and execute :PluginInstall to install plugins.

Configure path for pydiction dictionary. 
For example let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
