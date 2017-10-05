alias pussh='plain-utils ssh'
alias pur='plain-utils run'
alias pu='plain-utils'

alias tc='tagcumber -f progress -f rerun --out tmp/cucumber.rerun'
alias tcre='tagcumber -f progress @tmp/cucumber.rerun'

alias zuul-prod="plain-utils run zuul-prod bin/rails c"
alias payments-prod="convox run --app=payments --rack=production web bin/rails c"
alias zuul-staging="plain-utils run zuul-staging bin/rails c"
alias payments-staging="convox run --app=payments --rack=staging web bin/rails c"

export DISABLE_SPRING=true
