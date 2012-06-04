# vim:ts=3:et:ft=zsh
# janek richter <janek@openbug.org>

# environment variables
export BLOCKSIZE=1k
export IRCNAME="*unknown*"

# history
export HISTFILE=$HOME/.history
export HISTCONTROL=erasedups

# paths
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:$HOME/.rbenv/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

if [[ ! -o interactive ]]; then
	return
fi

# aliases
alias cp='cp -i'
alias ls='ls -aF'
if [[ $OSTYPE = linux* ]]; then
	alias ls='ls -aFv'
fi
alias manfile='groff -man -Tascii \!* | less'
alias mv='mv -i'
alias ph='ps auwwx | head'
alias pg='ps auwwx | grep -i -e ^USER -e '
alias pubip='curl http://ifconfig.me'

if [[ $OSTYPE = darwin* ]]; then
   alias ldd='otool -L'
   alias sha1='openssl dgst -sha1'
   alias dnsflush='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
   alias update_dotfiles='curl -L https://raw.github.com/sizowie/dotfiles/master/get.sh | sh -x'
elif [[ $OSTYPE = openbsd* ]]; then
   export PKG_PATH=http://mirror.planetunix.net/pub/OpenBSD/5.1/packages/`arch -s`/
   alias watchbw='netstat -w1 -b -I'
   alias update_dotfiles='ftp -Vo - https://raw.github.com/sizowie/dotfiles/master/get.sh | sh -x -'
fi

if [ -x "`which vim`" ]; then
   alias vi='vim'
   alias view='vim -R'
   export EDITOR=`which vim`
else
   export EDITOR=/usr/bin/vi
fi

# let control+w only delete one directory of a path, not the whole word
export WORDCHARS='*?_[]~=&;!#$%^(){}'

# options
setopt NOCLOBBER
setopt PRINT_EXIT_VALUE
setopt SHARE_HISTORY
HISTSIZE=500
PS1='%n@%m:%~%(!.#.>) '
setopt nohup
setopt no_beep

# etc
limit coredumpsize 0
umask 022

autoload -Uz compinit
compinit

local knownhosts
knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*:(ssh|scp|sftp|ping|rsync):*' hosts $knownhosts

if [[ $OSTYPE != linux* ]]; then
	# siginfo
	stty status '^T'
fi

# emacs style
bindkey -e

# rbenv
eval "$(rbenv init -)"
