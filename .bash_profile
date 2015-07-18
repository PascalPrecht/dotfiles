PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

DART_EDITOR_DIR=~/Applications/dart

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$HOME/Library/Haskell/bin:$PATH"


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

