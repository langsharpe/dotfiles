# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby rails rvm git python vundle)

source $ZSH/oh-my-zsh.sh

# No shared history
unsetopt share_history

# more git shortcuts
alias gst='git status'
compdef _git gst=git-status

alias gd='git diff'
compdef _git gd=git-status

alias gai='git add -i'
compdef _git gai=git-add

alias gg='git log --graph --oneline -n 20'
compdef _git gg=git-log

# OS specific aliases
if [ `uname` = "Darwin" ]
then

	# Macvim
	alias vi='mvim -v'
	alias vim='mvim -v'
	alias gvim=mvim

	# Repetitive lol tasks
	alias icanhas='brew install'

	# Homebrew
	PATH=/usr/local/bin:/usr/local/share/python:$PATH

else # Linux

	# Repetitive lol tasks
	alias icanhas='sudo apt-get install'

fi

# virtualenvwrapper installation
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"
[[ -s "/usr/local/share/python/virtualenvwrapper.sh" ]] && source "/usr/local/share/python/virtualenvwrapper.sh"
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--system-site-packages"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Project specific

# WagezWindows
alias -g wz="~/Projects/lightning_payroll/payroll"
alias WW='python $VIRTUAL_ENV/bin/payroll.py --logging=debug'
alias WC='python setup.py clean --all'
alias WI='python setup.py install'
alias WT='./run_tests.py discover'
alias WTT='./run_tests.py discover -p'

# HomeMachine

alias -g p='~/Dropbox/Projects'
