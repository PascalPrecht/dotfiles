fpath=($ZSH_ENV/functions $fpath)

if [ ! "$ZSH_THEME" = "" ]
  then
  if [ -f "$ZSH_ENV/themes/$ZSH_THEME.zsh-theme" ]
    source "$ZSH_ENV/themes/$ZSH_THEME.zsh-theme"
  fi
if
