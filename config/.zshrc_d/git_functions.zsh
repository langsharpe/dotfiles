function git_recent_branches {
  git reflog |                                               # recent git activity
    sed -n 's/^.*checkout: moving from \(.*\) to .*$/\1/p' | # branch switches
    sed -n '/[0-91-f]\{40\}/! p' |                           # not detatched commits
    grep -ve "^master$" |                                    # not master
    uniq |                                                   # not duplicated
    head --lines 10                                          # only 10
}

alias gre=git_recent_branches
