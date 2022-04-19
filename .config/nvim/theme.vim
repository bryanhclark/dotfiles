lua << EOF
require("leaf").setup({
    theme = "darker", -- default, alternatives: "dark", "lighter", "darker", "lightest", "darkest"
})
require('telescope').load_extension('fzf')
require('lualine').setup {
    options = {
        theme = 'leaf'
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
colorscheme gruvbox
