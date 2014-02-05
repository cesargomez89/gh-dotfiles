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
ARROW_BRANCH="\[\033[49;32m\]⮀"
BLACK="\[\033[0;38m\]"
USER_INFO_ARROW="\[\033[47;30m\]⮀"
DIRECTORY_COLOR="\[\033[47;30m\]"
DIRECTORY_ARROW="\[\033[42;37m\]⮀"
PROMPT_ARROW="\[\033[49;30m\]⮀"
PROMPT_COLOR="\[\033[49;33m\]"

export PS1="$PROMPT_COLOR [\u] ⮁  $USER_INFO_ARROW$DIRECTORY_COLOR \W $DIRECTORY_ARROW$BRANCH_COLOR ⭠ \$(parse_git_branch) $ARROW_BRANCH\n$PROMPT_COLOR\$$BLACK "

# add short cut keys for terminal app
# Ctrl left   right word
# Ctrl right  forward word
# up          history search backward
# down        history search forward
bind -f ~/.gh-dotfiles/bash_bindings

# rails alias
alias r="rails"

#rake db
alias rdbc="rake db:create"
alias rdbd="rake db:drop"
alias rdbm="rake db:migrate"
alias rdbmr="rake db:migrate:reset"

# vim alias
alias v="gvim"

# task alias
alias t="task"

# task alias
alias c="clear"

export PATH=$PATH:~/.gh-dotfiles/bin

# set editor for gem open
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias single='git config --global user.name "Cesar Gomez" ; git config --global user.email "cesargomez89@gmail.com" '

# Ruby aliases
alias b="bundle exec"
