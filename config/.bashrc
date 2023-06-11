export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(/usr/local/bin/brew shellenv)"

eval "$(direnv hook bash)"

eval "$(starship init bash)"

. ~/.bash_profile_d/colors.bash

. ~/.bash_profile_d/aliases.bash
. ~/.bash_profile_d/configuration.bash
. ~/.bash_profile_d/git_functions.bash
. ~/.bash_profile_d/ssh_agent.bash
. ~/.bash_profile_d/tab_completion.bash

# Give me my Ctrl-S
stty -ixon -ixoff
