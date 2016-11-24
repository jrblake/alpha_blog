export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PS1="\[\e[0;35m\]\@\[\e[m\] @\[\033[33;1m\]\w\[\033[m\]:\[\033[36m\]\$(parse_git_branch)\[\033[m\]$ "

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
