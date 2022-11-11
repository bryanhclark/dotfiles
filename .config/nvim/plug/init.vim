call plug#begin()
source $HOME/.config/nvim/plug/telescope/init.vim
source $HOME/.config/nvim/plug/vim-devicons/init.vim
source $HOME/.config/nvim/plug/vim-surround/init.vim

source $HOME/.config/nvim/plug/gruvbox/init.vim
source $HOME/.config/nvim/plug/nerdtree-git-plugin/init.vim
source $HOME/.config/nvim/plug/telescope-fzf-native/init.vim
source $HOME/.config/nvim/plug/vim-fugitive/init.vim

source $HOME/.config/nvim/plug/plenary/init.vim
source $HOME/.config/nvim/plug/typescript-vim/init.vim
source $HOME/.config/nvim/plug/vim-javascript/init.vim

source $HOME/.config/nvim/plug/lualine/init.vim
source $HOME/.config/nvim/plug/popup/init.vim
source $HOME/.config/nvim/plug/vim-commentary/init.vim
source $HOME/.config/nvim/plug/vim-jsx-typescript/init.vim

Plug 'maxmellon/vim-jsx-pretty'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'daschw/leaf.nvim'
Plug 'xiyaowong/nvim-transparent'
Plug 'windwp/nvim-spectre'

Plug 'vim-scripts/chlordane.vim'
Plug 'sickill/vim-monokai'
Plug 'hzchirs/vim-material'
Plug 'habamax/vim-godot'
call plug#end()

nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" run command :Spectre



