export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="./bin:$HOME/bin:$PATH"

if [ -f "/usr/local/opt/chruby/share/chruby/chruby.sh" ]
then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]
then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi

if [ -d "$HOME/Code/plain-utils/bin" ]
then
  export PATH="$HOME/Code/plain-utils/bin:$PATH"
fi

export NVM_DIR="/Users/langs/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(direnv hook bash)"
