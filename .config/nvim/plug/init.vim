call plug#begin()
source $HOME/.config/nvim/plug/coc/init.vim
source $HOME/.config/nvim/plug/nerdtree/init.vim
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



Plug 'daschw/leaf.nvim'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>n :NERDTreeToggle <CR>
nnoremap <C-\> :NERDTreeToggle %<CR> 

noremap <leader>/ :Commentary<cr>
