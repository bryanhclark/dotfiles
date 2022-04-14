set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set noshowmode
set background=dark

call plug#begin()
Plug 'yuezk/vim-js'
Plug 'posva/vim-vue'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'ellisonleao/gruvbox.nvim'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" TODO prettier
" TODO vim-fugitive
" TODO eslint
" TODO lsp
" TODO lsp installer
" TODO typescript
" TODO javascript
" TODO react
" TODO ruby"
call plug#end()

colorscheme gruvbox


let mapleader = " "

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>n :NERDTreeToggle<CR>

lua << EOF
require('telescope').load_extension('fzf')
require('lualine').setup {
    options = {
        theme = 'gruvbox'
        },
    sections = {
    lualine_c = {
        {
          'filename',
          file_status = true, -- displays file status (readonly status, modified status)
          path = 2 -- 0 = just filename, 1 = relative path, 2 = absolute path
        }
      }
     }
}
EOF
