source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/leader.vim
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/coc.vim

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
