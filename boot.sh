#!/bin/bash

cd "$(dirname "$0")"

git pull origin master

function updateHomeDirectory() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "boot.sh" -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "Yo! I'll probably overwrite some files in your home directory, okay? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    updateHomeDirectory
  fi
fi

unset updateHomeDirectory

source ~/.bash_profile
