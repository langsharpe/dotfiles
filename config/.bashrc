export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="./bin:$HOME/bin:$PATH"

eval "$(direnv hook bash)"

eval "$(starship init bash)"

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
