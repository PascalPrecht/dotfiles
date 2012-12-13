#!/bin/bash
shopt -s dotglob

cd "$(dirname "$0")"

DOTFILES_PATH=$HOME/dotfiles
FILES=$(find . -name "*" -depth 1 | grep -v "/\.git" | grep -v "/\.itermcolors" | grep -v ".gitignore" | grep -v "README.md" | grep -v ".gitmodules" | grep -v "\.$" | grep -v "allthethings.sh" | grep -v "bootstrap.sh")

symlink() {
  if [ ! -e $2 ] ; then
    ln -s $1 $2
  fi
}

source allthethings.sh

echo " "

git pull origin master

echo " "
echo "Setting up Symlinks..."
echo " "

for f in $FILES
do
  fname=$(basename $f)

  if [ $fname == 'fish' ] ; then
    symlink "$DOTFILES_PATH/$fname" "$HOME/.config/$fname"
    echo "$HOME/.config/$fname -> $DOTFILES_PATH/$fname"
  else
    symlink "$DOTFILES_PATH/$fname" "$HOME/$fname"
    echo "$HOME/$fname -> $DOTFILES_PATH/$fname"
  fi

done

if [ ! -d $HOME/.vim/bundle ]; then
    mkdir -p $HOME/.vim/bundle
fi

echo " "

if [ ! -e $HOME/.vim/bundle/vundle ]; then
    echo "Installing Vundle"
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

echo "Successfully updated dotfiles!"
echo " "

source ~/.bash_profile
