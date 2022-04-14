export ZSH="/Users/bryanclark/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM$


plugins=(git)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin"

dtf () {
    git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"
}

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export PATH="/Users/bryanclark/.local/bin:$PATH"
