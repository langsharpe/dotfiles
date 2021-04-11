export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="./bin:$HOME/bin:$PATH"

if [ -f "/usr/local/opt/chruby/share/chruby/chruby.sh" ]
then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]
then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi

if [ -d "$HOME/.nvm" ]
then
  export NVM_DIR="$HOME/.nvm"
  source "/usr/local/opt/nvm/nvm.sh"
fi

eval "$(direnv hook bash)"

# if [ -d "$HOME/.asdf" ]
# then
#   source "/usr/local/opt/asdf/asdf.sh"
# fi

export PATH="/Applications/Postgres.app/Contents/Versions/10/bin:$PATH"
export PATH="/Users/lang.sharpe/Library/Python/3.9/bin:$PATH"

source /usr/local/etc/bash_completion.d/git-completion.bash

. ~/.bash_profile_d/colors.bash

. ~/.bash_profile_d/aliases.bash
. ~/.bash_profile_d/configuration.bash
. ~/.bash_profile_d/git_functions.bash
. ~/.bash_profile_d/home.bash
. ~/.bash_profile_d/prompt.bash
. ~/.bash_profile_d/ssh_agent.bash
. ~/.bash_profile_d/tab_completion.bash

# Give me my Ctrl-S
stty -ixon -ixoff

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
