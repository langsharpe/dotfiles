alias pussh='plain-utils ssh'
alias pur='plain-utils run'
alias pu='plain-utils'

alias tc='tagcumber -f progress -f rerun --out tmp/cucumber.rerun'
alias tcre='tagcumber -f progress @tmp/cucumber.rerun'

alias zuul-prod="plain-utils run zuul-prod bin/rails c"
alias payments-prod="plain-utils run payments-prod bin/rails c"
alias zuul-staging="convox run --app=zuul --rack=staging web bin/rails c"
alias payments-staging="plain-utils run payments-staging bin/rails c"

export DISABLE_SPRING=true
