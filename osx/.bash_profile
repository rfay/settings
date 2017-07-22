if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

source "$HOME/.console/console.rc" 2>/dev/null

# Always run .bashrc
[ -r ~/.bashrc ] && source ~/.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/google-cloud-sdk/path.bash.inc ]; then
  source '/usr/local/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/google-cloud-sdk/completion.bash.inc ]; then
  source '/usr/local/google-cloud-sdk/completion.bash.inc'
fi

source ~/kube-prompt.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export VAULT_ADDR=https://vault.drud.com:8200
export DRUD_WORKSPACE=/User/rfay/workspace
