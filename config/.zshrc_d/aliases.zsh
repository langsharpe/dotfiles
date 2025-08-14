# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'

alias cd..='cd ..'

# Git
alias ga='git add'
alias g='git'
alias gst='git status'
alias gf='git fetch'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gap='git add -p'
alias gri='git rebase -i'
alias gg='git log --graph --oneline --decorate -n 8'
alias ggg='git log --graph --oneline --decorate -n 20'
alias gnb='git fetch && git checkout -q origin/main && git checkout -b'
alias grm='git fetch && git rebase origin/main'
alias gd='git diff'
alias gpu='git push --set-upstream'
alias gwip="git add . && git commit --all -m 'WIP'"
alias gunwip="git reset HEAD~ && git status --short"

# Bundler
alias be='bundle exec'
alias bi='bundle install'

# Brew
alias brewup="brew upgrade"

# Less
alias less='less -R'
