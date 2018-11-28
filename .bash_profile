# ~/.bash_profile: executed by bash(1) for login shells.

umask 002
PS1='\t (\w):$ '

# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs



export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# adding next line to get git
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin

#adding next line to get Haskell (maybe)
export PATH="$HOME/Library/Haskell/bin:$PATH"

#adding next line for hakyll-journal (to do site deploy and site build without typing ./site)
export PATH="$HOME/journal/.cabal-sandbox/bin:$PATH"

#adding next line for image magic
export MAGICK_HOME="/Applications/ImageMagick-6.9.1"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

export ANDROID_HOME=/Users/thunderrabbit/Develop-Android/sdk
export PATH="$ANDROID_HOME:$PATH"

export ENV=$HOME/.bashrc
export USERNAME="thunderrabbit"
export EDITOR=emacs

## source ~/.profile added for RVM 5 Feb 2015  (Ruby Version Manager) https://github.com/wayneeseguin/rvm/
source ~/.profile

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/perl5/perlbrew/etc/bashrc

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
