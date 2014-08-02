#!/usr/bin/env bash

. ~/.bash_profile_d/colors.bash

# Don't check mail when opening terminal.
unset MAILCHECK


# Prompt
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo " ✗"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}
PS1="${green}\w${bold_blue}(\$(parse_git_branch)\$(parse_git_dirty)${bold_blue})${reset_color} "

# ALIASES
# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias cd..='cd ..'

# Git
alias ga='git add'
alias gall='git add .'
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gf='git fetch'
alias gp='git push'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gci='git commit --interactive'
alias gb='git branch'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gw="git whatchanged"
alias gai='git add -i'
alias gg='git log --graph --oneline -n 20 --decorate'
alias gom='git checkout origin/master'
alias gnb='git fetch && git checkout -q origin/master && git checkout -b'
alias grm='git fetch && git rebase origin/master'
alias gd='git diff'
git config --global --add color.ui true

# Bundler Commands
alias be='bundle exec'
alias bi='bundle install'

# Macvim
alias vi='mvim -v'
alias vim='mvim -v'
alias gvim=mvim

# Give me my Ctrl-S
stty -ixon -ixoff

# Project specific

# HomeMachine
alias dp='cd ~/Dropbox/Projects'

# EDH
alias run_core_au='be script/server webrick -p 3000'
alias run_core_uk='be script/server webrick -p 3100'
alias run_admin_au='be script/server -p 3002'
alias run_admin_uk='be script/server -p 3102'
alias run_heroix_au='be script/server -p 3001'
alias run_heroix_uk='be script/server -p 3101'

# Done
alias done='terminal-notifier -message Done'
