echo "loading ~/.bash_profile...."

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

## set the PATH
export PYTHONPATH="/home7/tvctopin/lib/python2.6/site-packages:$PYTHONPATH"
export XML_CATALOG_FILES="/home7/tvctopin/etc/xml/catalog"
export PATH="/home7/tvctopin/opt/gnu-sed/libexec/gnubin:/home7/tvctopin/bin:/home7/tvctopin/sbin:/home7/tvctopin/perl/bin:/home7/tvctopin/ruby/gems/bin:$PATH"
export MANPATH="/home7/tvctopin/opt/gnu-sed/libexec/gnuman:$MANPATH"
export LD_LIBRARY_PATH="/home7/tvctopin/lib"

export INSTALL_ROOT=/home7/tvctopin

## Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

## Autocomplete Grunt commands
which grunt &> /dev/null && eval "$(grunt --completion=bash)"

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
