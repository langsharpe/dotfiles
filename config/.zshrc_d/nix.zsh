export NIX_SHELL_PRESERVE_PROMPT=1

# This should be in /etc/zshrc, but is removed on every os update
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
