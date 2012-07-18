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

BRANCH_COLOR="\[\033[42;30m\]"
ARROW_BRANCH="\[\033[40;32m\]⮀"
BLACK="\[\033[0;38m\]"
USER_INFO_ARROW="\[\033[47;30m\]⮀"
DIRECTORY_COLOR="\[\033[47;30m\]"
DIRECTORY_ARROW="\[\033[49;37m\]⮀"
PROMPT_ARROW="\[\033[49;30m\]⮀"
PROMPT_COLOR="\[\033[40;33m\]"

export PS1="$BRANCH_COLOR ⭠ \$(parse_git_branch) $ARROW_BRANCH$PROMPT_COLOR \u ⮁ \h $USER_INFO_ARROW$DIRECTORY_COLOR \W $DIRECTORY_ARROW\n$PROMPT_COLOR\$$PROMPT_ARROW$BLACK "

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
alias v="mvim"
alias n="nautilus . &"

# task alias
alias t="task"

# fossil alias
alias f="fossil"
alias fs="fossil status"
alias fss="fossil sync"
alias fsas="fossil all sync"
alias fsd="fossil diff"
alias chupamela="echo 'CHUPAMELA CHINO'"

export PATH=$PATH:~/.gh-dotfiles/bin

# set editor for gem open
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias pairing='git config --global user.name "Antonio Chavez + Daniel Lopez" ; git config --global user.email "cavjzz@gmail.com + daniel.lopez@tangosource.com" '
alias single='git config --global user.name "Antonio Chavez" ; git config --global user.email "cavjzz@gmail.com" '
