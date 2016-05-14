function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

function git_recent_branches {
  git reflog |                                              # recent git activity
    sed -n 's/^.*checkout: moving from \(.*\) to.*$/\1/p' | # branch switches
    sed -n '/[0-91-f]\{40\}/! p' |                          # not detatched commits
    grep -ve "^master$" |                                   # not master
    uniq                                                    # not duplicated
}

alias gre=git_recent_branches
