alias run_core_au='be script/server webrick -p 3000'
alias run_core_uk='be script/server webrick -p 3100'
alias run_admin_au='be script/server -p 3002'
alias run_admin_uk='be script/server -p 3102'
alias run_heroix_au='be script/server -p 3001'
alias run_heroix_uk='be script/server -p 3101'

alias pussh='plain-utils ssh'
alias pur='plain-utils run'
alias pu='plain-utils'

alias tc='tagcumber -f progress -f rerun --out tmp/cucumber.rerun'
alias tcre='tagcumber -f progress @tmp/cucumber.rerun'

export DISABLE_SPRING=true
