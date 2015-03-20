Configuración particular de VIM

Instalación

rm -rf ~/.vim

rm ~/.vimrc

rm ~/.gvimrc

git clone https://github.com/b4rt0l4/vim_configuration.git ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc

ln -s ~/.vim/gvimrc ~/.gvimrc

cd ~/.vim

git submodule init git submodule update

Abrir vim Ejecutar :PluginInstall para instalar los plugins

Instalar fuentes para powerline Para visualizar los símbolos hace falta alguna fuente parcheada, obtenerla con git clone https://github.com/powerline/fonts.git y ejecutar el install.sh
