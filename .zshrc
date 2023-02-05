export ZSH="/Users/bryanclark/.oh-my-zsh"

ZSH_THEME="dracula"

export PATH="/Users/bryanclark/.cargo/bin:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export optflags="-Wno-error=implicit-function-declaration"


plugins=(git zsh-vi-mode zsh-syntax-highlighting zsh-autosuggestions)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


export PATH="/.local/share/nvim:$PATH"
export PATH="/Applications/Godot.app:$PATH"

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
alias rust="cd ~/Documents/rustlings"


# Our-scene alias
alias os="tmux a -t our_scene"
alias os:root="cd ~/Documents/our-scene/our-scene/"
alias os:web="cd ~/Documents/our-scene/our-scene/apps/web"
alias os:api="cd ~/Documents/our-scene/our-scene/apps/api"

# Coa alias
alias coa="tmux a -t coa"
alias yw="yarn workspace"
alias yws="yarn workspaces"

alias yww="yarn workspace web"
alias ywm="yarn workspace mobile"

alias coa:root="cd ~/Documents/coa/coa/"
alias coa:web="cd ~/Documents/coa/coa/apps/web/"
alias coa:mob="cd ~/Documents/coa/coa/apps/mobile/"
