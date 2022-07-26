lua << EOF
require('telescope').load_extension('fzf')
require('lualine').setup {
    options = {
        theme = 'auto'
        },
    sections = {
      lualine_c = {
          {
            'filename',
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
          }
        },
      lualine_x = {}
     }
}
EOF
set background=dark
syntax enable
colorscheme vim-material
