function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo " ✗"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

PS1="${green}\w${bold_blue}(\$(parse_git_branch)\$(parse_git_dirty)${bold_blue})${reset_color} "
