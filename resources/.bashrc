eval "$(direnv hook bash)"
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'
alias ll='ls -alF'
