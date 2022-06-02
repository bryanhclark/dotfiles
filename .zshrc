export ZSH="/Users/bryanclark/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export optflags="-Wno-error=implicit-function-declaration"


plugins=(git zsh-vi-mode)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source $ZSH/oh-my-zsh.sh

dtf () {
    git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" "$@"
}

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export PATH="/Users/bryanclark/.local/bin:$PATH"

# RVM can encounter errors if it's not the last thing in .bash_profile
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to path for scripting (to manage Ruby versions)
export PATH="$GEM_HOME/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*


alias conf="cd ~/.config/nvim && nvim ."
alias zshrc="cd ~ && nvim .zshrc"
alias zsh:source="source ~/.zshrc"
alias nvim:source="source ~/.config/nvim/init.vim"

alias notes="cd ~/.notes && nvim ."
alias config="cd ~/.config/nvim && nvim ."


# Coa alias
alias coa="tmux a -t coa"
alias yw="yarn workspace"
alias yws="yarn workspaces"

alias yww="yarn workspace web"
alias ywm="yarn workspace mobile"
