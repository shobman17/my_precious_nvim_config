require("winbar").setup {
  
    icons = true,
    diagnostics = true,
    buf_modified = true,
    -- buf_modified_symbol = "M",
    buf_modified_symbol = "●",
    highlight = "Normal",

    dim_inactive = {
      enabled = false,
      highlight = "WinbarNC",
      icons = true, -- whether to dim the icons
      name = true, -- whether to dim the name
    },

    exclude_filetype = {
        'help',
        'startify',
        'dashboard',
        'packer',
        'neogitstatus',
        'NvimTree',
        'Trouble',
        'alpha',
        'lir',
        'Outline',
        'spectre_panel',
        'toggleterm',
        'qf',
    }
}
