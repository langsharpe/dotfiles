# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby rails rvm git python vundle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# RVM installation

export CC=gcc-4.2

[[ -s "/Users/lang/.rvm/scripts/rvm" ]] && source "/Users/lang/.rvm/scripts/rvm"  # This loads RVM into a shell session.

cd .

# No shared history
unsetopt share_history

# more git shortcuts
alias gst='git status'
compdef _git gst=git-status

alias gd='git diff'
compdef _git gd=git-status  

alias gai='git add -i'
compdef _git gai=git-add  

# Repetitive lol tasks
alias icanhas='sudo apt-get install'

# virtualenvwrapper installation
export WORKON_HOME=~/.pyenvs
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"

# Project specific

# Create Your Reality
alias -g cyrtheme="~/Dropbox/Projects/CreateYourReality/updatedsite/phase2/cyr/wp-content/themes/cyr"
alias -g cyrproject="~/Dropbox/Projects/CreateYourReality/"
alias -g cyrwp="~/Dropbox/Projects/CreateYourReality/updatedsite/phase2/cyr/"

# WagezWindows
alias -g wz="/home/langs/Projects/wagezwindow/wagezwindow/"
alias WW='WagezWindow.py --logging=debug'
alias WB='python setup.py build --force'
alias WI='python setup.py install'
alias WT='python -m unittest discover'

