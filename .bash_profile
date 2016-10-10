PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
DART_EDITOR_DIR=~/Applications/dart
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"
# Search also in ~/bin/pwd.sh
export PATH="$HOME/bin/pwd.sh:$PATH"
export DARTIUM_BIN="$DART_EDITOR_DIR/chromium/Chromium.app/Contents/MacOS/Chromium"
export DART_SDK="$DART_EDITOR_DIR/dart-sdk"

PATH+=":$DART_SDK/bin"


[ -z "$TMUX" ] && export TERM=xterm-256color

if [[ "$TERM" != "screen-256color" ]]
then
  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
  exit
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
