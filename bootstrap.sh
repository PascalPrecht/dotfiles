#!/bin/bash
shopt -s dotglob

cd "$(dirname "$0")"

DOTFILES_PATH=$HOME/dotfiles
FILES=$DOTFILES_PATH/*
ARRAY=([0]=$DOTFILES_PATH/.git [1]=$DOTFILES_PATH/.gitignore [2]=$DOTFILES_PATH/bootstrap.sh)

in_array() {
  for (( i=0; i<${#ARRAY[@]}; i++)); do
    if [ ${ARRAY[$i]} == $1 ]; then
      return 0
    fi
  done
  return 1
}

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
  if ! in_array $f $ARRAY; then
    fname=$(basename $f)
    symlink $f $HOME/$fname

    echo "$HOME/$fname -> $f"
  fi
done

echo " "
echo "Successfully updated dotfiles!"
echo " "

source ~/.bash_profile
