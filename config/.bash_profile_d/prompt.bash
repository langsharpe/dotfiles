function prompt_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo " ✗"
}

function prompt_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

PS1="${green}\w${bold_blue}(\$(prompt_git_branch)\$(prompt_git_dirty)${bold_blue})${reset_color} "

# Set window title
PS1="\[\033]0;\W\007\]$PS1"
