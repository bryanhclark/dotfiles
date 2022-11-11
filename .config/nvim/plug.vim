call plug#begin()
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'

Plug 'Xuyuanp/nerdtree-git-plugin' "do i need ?
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'tpope/vim-fugitive'

Plug 'nvim-lua/plenary.nvim'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'

Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'tpope/vim-commentary'


Plug 'peitalin/vim-jsx-typescript'

Plug 'maxmellon/vim-jsx-pretty'
Plug 'EdenEast/nightfox.nvim' 
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


" COMMENTARY
noremap <leader>/ :Commentary<cr>

" SPECTRE
" search current word
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" run command :Spectre


" TELESCOPE 
nnoremap <leader>hf :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" FUGITIVE
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>
