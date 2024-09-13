vim.opt.termguicolors = true

local bufferline = require('bufferline')
bufferline.setup {
  options = {
    mode = "buffers",
    separator_style = 'thin',
    themable = true,
    indicator = {
      -- icon = '▚ ', -- this should be omitted if indicator style is not 'icon'
      style = 'icon',
    },

    offsets = {
      {
        filetype = "NvimTree",
        text = "NvimTree Explorer",
        highlight = "Directory",
        text_align = "center",
        separator = vim.opt.fillchars:get().vert .. " ", -- use a "true" to enable the default, or set your own character
        -- separator = " ", -- use a "true" to enable the default, or set your own character
      },
    },
  },
}


