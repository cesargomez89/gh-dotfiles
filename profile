set match-hidden-files off
set page-completions off
set completion-query-items 350

# create big history file 
export HISTSIZE=20000
export HISTFILESIZE=20000

# Now bash writes and re-reads the history file every time it prints a new prompt for you.
export PROMPT_COMMAND="history -a ; history -n;  ${PROMPT_COMMAND}"


shopt -s histappend
# don't put duplicate lines in the history and ignore same sucessive entries. 
export HISTCONTROL=ignoreboth 


# GIT ------------------------------------
# show current branch on shell
source ~/.gh-dotfiles/bash_git
source ~/.gh-dotfiles/task_completion.sh

BLACK="\[\033[0;38m\]"
YELLOW="\[\033[1;33m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
GREEN="\[\033[0;32m\]"
GREEN_BOLD="\[\033[1;32m\]"
PURPLE="\[\033[0;34m\]"
PURPLE_BOLD="\[\033[1;34m\]"
PINK="\[\033[0;35m\]"
PINK_BOLD="\[\033[1;35m\]"
BLUE="\[\033[0;36m\]"
BLUE_BOLD="\[\033[1;36m\]"

export PS1="\u at $RED_BOLD\h $BLUE_BOLD\W$BLACK $GREEN_BOLD\$(parse_git_branch)$BLACK\n\$ "

# add short cut keys for terminal app
# Ctrl left   right word
# Ctrl right  forward word
# up          history search backward
# down        history search forward
bind -f ~/.gh-dotfiles/bash_bindings

# rails alias
alias r="rails"

# vim alias
alias mvimt="mvim --remote-tab"
alias v="gvim"
alias n="nautilus . &"

# task alias
alias t="task"

# fossil alias
alias f="fossil"
alias fs="fossil status"
alias fss="fossil sync"
alias fsas="fossil all sync"
alias fsd="fossil diff"

export PATH=$PATH:~/.gh-dotfiles/bin

# set editor for gem open
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

