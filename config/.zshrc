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
plugins=(ruby rails git python vundle sublime)

source $ZSH/oh-my-zsh.sh

# No shared history
unsetopt share_history

# more git shortcuts
alias gst='git status'
compdef _git gst=git-status

alias gai='git add -i'
compdef _git gai=git-add

alias gg='git log --graph --oneline -n 20 --decorate'
compdef _git gg=git-log

git config --global --add color.ui true

# bundle shortcuts
alias be='bundle exec'
alias bi='bundle install'

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
	export PATH=/usr/local/bin:/usr/local/share/python:$PATH

	# Give me my Ctrl-S
	stty -ixon -ixoff

else # Linux

	# Repetitive lol tasks
	alias icanhas='sudo apt-get install'

fi

# virtualenvwrapper installation
# Uninstalled pyton for now.
#[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"
#[[ -s "/usr/local/share/python/virtualenvwrapper.sh" ]] && source "/usr/local/share/python/virtualenvwrapper.sh"
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--system-site-packages"
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# rbenv installation
export PATH="/usr/local/sbin:/usr/local/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Project specific

# HomeMachine
alias -g p='~/Dropbox/Projects'

# EDH

alias run_core_au='be script/server webrick -p 3000'
alias run_core_uk='be script/server webrick -p 3100'
alias run_admin_au='be script/server -p 3002'
alias run_admin_uk='be script/server -p 3102'
alias run_heroix_au='be script/server -p 3001'
alias run_heroix_uk='be script/server -p 3101'

