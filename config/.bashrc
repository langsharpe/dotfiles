export PATH="/usr/local/sbin:/usr/local/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="./bin:$HOME/bin:$PATH"

if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]
then
  export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
fi

if [ -d "$HOME/Code/plain-utils/bin" ]
then
  export PATH="$HOME/Code/plain-utils/bin:$PATH"
fi

export NVM_DIR="/Users/langs/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(direnv hook bash)"
