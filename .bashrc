export PATH="$HOME/.rbenv/bin:/Users/zonzamas/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
alias emacs=/usr/local/bin/emacs

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM=xterm-color

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;31m\]$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi)\[\033[00m\]\$ '


if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi
