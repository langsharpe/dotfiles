if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
else
  echo "Direnv not installed"
fi
