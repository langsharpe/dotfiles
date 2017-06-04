eval `ssh-agent` > /dev/null

# Add all identities stored in the keychain.
ssh-add -A &> /dev/null
