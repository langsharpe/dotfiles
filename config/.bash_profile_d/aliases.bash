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

# Bundler Commands
alias be='bundle exec'
alias bi='bundle install'

# Macvim
alias vi='mvim -v'
alias vim='mvim -v'
alias gvim=mvim

# Done
alias done='terminal-notifier -message Done'
