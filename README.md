# Dotfiles

These are my personal dotfiles to setup my machine and developing environment. It includes my Vim configuration dotjs files and a lot more.

## Installation

**Note**: When using fish shell, please install the dotfiles **before** you change your shell to fish!

### Step 1:

<code>cd</code> to your home directory and clone this repository via git clone.

````
$ cd ~
$ git clone https://github.com/PascalPrecht/dotfiles.git
````

### Step 2:

You should now have <code>dotfiles</code> folder in your home directory. To setup the dotfiles, execute the <code>boostrap.sh</code>.

````
$ bash ~/dotfiles/bootstrap.sh
````

### Step 3:

Check if the bootstrap did everything right and <code>ls -la</code> your home directory to see if all symlinks are set up.

````
$ ls -la ~

# Should return something like this

$ .js -> /Users/[YOURNAME]/dotfiles/.js
$ .osx -> /Users/[YOURNAME]/dotfiles/.osx
$ .vim -> /Users/[YOURNAME]/dotfiles/.vim
$ .vimrc -> /Users/[YOURNAME]/dotfiles/.vimrc

# .. and so on
````

To check if there are any updates, repeat step 2.
