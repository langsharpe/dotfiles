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

if [ -d "$HOME/.nvm" ]
then
  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"
fi

eval "$(direnv hook bash)"

# everydayhero

if [ -d "$HOME/Code/batcave/plain-utils/bin" ]
then
  export PATH="$HOME/Code/batcave/plain-utils/bin:$PATH"
fi

if [ -d "$HOME/Code/batcave/.nvm" ]
then
  export NVM_DIR="$HOME/Code/batcave/.nvm"
  source "$NVM_DIR/nvm.sh"
fi

if [ -d "$HOME/Code/batcave/.chruby" ]
then
  source ~/Code/batcave/.chruby/share/chruby/chruby.sh
  source ~/Code/batcave/.chruby/share/chruby/auto.sh
fi
