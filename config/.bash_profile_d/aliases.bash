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
alias g='git'
alias gst='git status'
alias gf='git fetch'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gai='git add -i'
alias gap='git add -p'
alias gri='git rebase -i'
alias gg='git log --graph --oneline --decorate -n 8'
alias ggg='git log --graph --oneline --decorate -n 20'
alias gnb='git fetch && git checkout -q origin/master && git checkout -b'
alias grm='git fetch && git rebase origin/master'
alias gd='git diff'
alias gpu="git push --set-upstream origin \$(prompt_git_branch)"
alias gwip="git add . && git commit --all -m 'WIP'"
alias gunwip="git reset HEAD~ && git status --short"

# Ruby
alias gapr="rubocop -a; gap"

# Bundler
alias be='bundle exec'
alias bi='bundle install'

# Macvim
alias vi='mvim -v'
alias vim='mvim -v'
alias gvim=mvim

# Done
alias done='terminal-notifier -message Done'

# Sublime Text
alias subl='open -a "Sublime Text"'

# Cucumber
alias ku='cucumber -f progress -f rerun --out tmp/cucumber.rerun'
alias kure='cucumber -f progress @tmp/cucumber.rerun'

# dinghy
alias denv='$(dinghy env)'

# codemod
alias codemod.rb="codemod --extensions=rb,erb,yml --editor='subl -n -w'"

# rename
alias rename.rb="find . \( -name '*.rb' -or -name '*.erb' -or -name '*.yml' \) -print0 | rename --stdin -0"

# Brew
alias brewup="brew upgrade"
