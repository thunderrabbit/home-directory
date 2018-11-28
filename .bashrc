# ~/.bashrc: executed by bash(1) for non-login shells.

# Yo Rob                        22 March 2005
# Make changes to .bash_profile instead of here.
# Unless you learn a reason not to.
#  - Rob

# Yo Rob                        22 December 2007
# I don't care what that old Rob said;
# bashrc has aliases
# - Rob

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias gitl='git log --oneline --graph --decorate --all'

# also shows the name of file x0x0* if it exists
alias gits='git status; if test -n "$(find . -maxdepth 1 -name x0x0\* -print -quit)"; then echo; ls -1 x0x0*; fi'
# to help with journal commits
alias gitsl='gits; gitl -20'

alias gitd='git diff -b'
alias gitds='git diff -b --staged'
alias gita='git add'

# setting for the new UTF-8 terminal in Lion
export LC_CTYPE="en_US.UTF-8"
export LC_ALL=en_US.UTF-8

source ~/.bash_colors

bind '"[A":history-search-backward'
bind '"[B":history-search-forward'
alias fish="exec '/Applications/fish.app/Contents/Resources/base/bin/fish'"
alias sw='echo "cd /var/www/admin.clubberia.com/wwwroot" | pbcopy; echo "alt-v to paste "; echo | pbpaste; ssh robnugen@dev0.subdev.net -p63'
alias aoyama='echo "y2ebhv3r" | pbcopy; echo "alt-v to paste"; ftp xsvx1018212@xsvx1018212.xsrv.jp'
alias v='vagrant'

alias  make='make -j4 -l4'
alias ls='ls -AlG'
alias se='screen -e \`\`'
alias sl='screen -list'
alias hv='/Applications/android-sdk-mac_x86/tools/hierarchyviewer'

alias snooj='ssh 128.83.67.213'

alias sback='ssh backforest@chatforest.com'
alias sf='ssh isfuzzy@robnugen.com'
alias sp='ssh poken@robnugen.com'
alias sr='echo try ssh tr dreamhost'
alias swiki='echo try ssh wiki'
alias ss='ssh shwntell@soness.com'
alias sfb='ssh trfb@fb0.robnugen.com'
alias sg='ssh nugenes@robnugen.com'
alias ssc='ssh csrrabbit@csrrabbit.com'
alias stiger='ssh misstiger@hayashitiger.com'
alias cotb='ssh cotb@cotb.robnugen.com'

alias ssx='ssh -p 10022 xsvx1018212@210.188.201.69'
alias s="subl -n ."
alias godot2='/Applications/Godot214.app/Contents/MacOS/Godot -e -path $(pwd)'
alias godot3='/Applications/Godot300.app/Contents/MacOS/Godot -e -path $(pwd)'

alias sab="ssh andbeyond"
alias sabd="ssh -p63 robnugen@abdirect.subdev.net"
alias sbl="ssh thunderrabbit@106.187.38.107"  # sbstrm linode

