alias pussh='plain-utils ssh'
alias pur='plain-utils run'
alias pu='plain-utils'

alias tc='tagcumber -f progress -f rerun --out tmp/cucumber.rerun'
alias tcre='tagcumber -f progress @tmp/cucumber.rerun'

alias zuul-prod="convox run --app=zuul --rack=production web bin/rails c"
alias payments-prod="plain-utils run payments-prod bin/rails c"
alias zuul-staging="convox run --app=zuul --rack=staging web bin/rails c"
alias payments-staging="convox run --app=payments --rack=production web bin/rails c"

export DISABLE_SPRING=true
