source $ZSH_ENV/functions.zsh

source $ZSH_ENV/aliases.zsh
# Loading the theme
if [ ! "$ZSH_THEME" = "" ]
  then
  if [ -f "$ZSH_ENV/themes/$ZSH_THEME.zsh-theme" ]
    source "$ZSH_ENV/themes/$ZSH_THEME.zsh-theme"
  else
    source "$ZSH_ENV/themes/pure.zsh-theme"
  fi
if
