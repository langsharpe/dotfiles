# RVM installation

export CC=gcc-4.2

[[ -s "/Users/lang/.rvm/scripts/rvm" ]] && source "/Users/lang/.rvm/scripts/rvm"  # This loads RVM into a shell session.

cd .


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=/usr/local/sbin:/usr/local/bin:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
