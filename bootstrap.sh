#!/bin/bash
shopt -s dotglob

cd "$(dirname "$0")"

DOTFILES_PATH=$HOME/dotfiles
FILES=$(find . -name "*" -depth 1 | grep -v "/\.git" | grep -v ".gitignore" | grep -v "\.$" | grep -v "bootstrap.sh")

symlink() {
  if [ ! -e $2 ] ; then
    ln -s $1 $2
  fi
}

echo "Updating dotfiles..."
echo " "

git pull origin master

echo " "
echo "Setting up Symlinks..."
echo " "

for f in $FILES
do
  fname=$(basename $f)

  symlink "$DOTFILES_PATH/$fname" "$HOME/$fname"

  echo "$HOME/$fname -> $DOTFILES_PATH/$fname"
done

echo " "
echo "Successfully updated dotfiles!"
echo " "

source ~/.bash_profile
