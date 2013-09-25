echo "loading ~/.bash_profile...."
# Add `~/bin` to the `$PATH`

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

## set the PATH
export 
PATH=/home7/tvctopin/bin:/home7/tvctopin/sbin:/home7/tvctopin/perl/bin:/home7/tvctopin/ruby/gems/bin:/home7/tvctopin/perl/usr/bin:$PATH

export LD_LIBRARY_PATH="/home7/tvctopin/lib/gawk:/home7/tvctopin/lib:/home7/tvctopin/lib64:$LD_LIBRARY_PATH"

export PKG_CONFIG_PATH=/home7/tvctopin/lib/pkgconfig:/home7/tvctopin/lib64/pkgconfig:$PKG_CONFIG_PATH

export PKG_CONFIG_LIBDIR=/home7/tvctopin/lib/pkgconfig

export INSTALL_ROOT=/home7/tvctopin

## Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

## Enable some Bash 4 features when possible:
#for option in autocd globstar; do
#    shopt -s "$option" 2> /dev/null
#done

## Autocomplete Grunt commands
which grunt &> /dev/null && eval "$(grunt --completion=bash)"

## If possible, add tab completion for many more commands
# [ -f /etc/bash_completion ] && source /etc/bash_completion


## Homebrew's own bash completion script has been installed
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#  fi

source ~/.autoenv/activate.sh
