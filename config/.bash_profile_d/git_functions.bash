
function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

alias gpu="git push --set-upstream origin \$(prompt_git_branch)"