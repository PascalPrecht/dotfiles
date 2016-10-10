[ -n "$PS1" ] && source ~/.bash_profile


# added by travis gem
[ -f /Users/pp/.travis/travis.sh ] && source /Users/pp/.travis/travis.sh

export NVM_DIR="/Users/pascalprecht/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
