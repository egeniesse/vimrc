cd ~
if test -e ".vimrc";
then
  echo "moving previous .vimrc file to .oldvimrc"
  mv .vimrc .oldvimrc
fi
cp .vim/vimrcs/awesomeVimrc .vimrc
if ! test -e ".vim/bundle/Vundle.vim";
then
  echo "cloning vundle package manager"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "installing plugins"
vim +PluginInstall +qall

echo "compiling the autocomplete plugin"
.vim/bundle/YouCompleteMe/install.py --tern-completer

