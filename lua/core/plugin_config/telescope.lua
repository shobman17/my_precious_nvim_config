local builtin = require('telescope.builtin')
-- local themes = require('telescope.themes')
local builtin_schemes = require("telescope._extensions.themes").builtin_schemes

vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>cs', ':Telescope themes<CR>', {noremap=true, silent=true, desc = "Theme Switcher"})

-- builtin.find_files(themes.get_dropdown({}))

-- fix border highlighting
-- vim.cmd [[ highlight TelescopeBorder ctermbg=NONE guibg=NONE]]

-- Copied from telescope fzf native github
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },

    themes = {
      layout_config = {
        horizontal = {
          width = 0.8,
          height = 0.7,
        },
      },
    },

    -- (boolean) -> show/hide previewer window
    enable_previewer = false,

    -- (boolean) -> enable/disable live preview
    enable_live_preview = false,

    -- (table)
    -- (boolean) ignore -> toggle ignore light themes
    -- (list) keywords -> list of keywords that would identify as light theme
    light_themes = {
      ignore = true,
      keywords = { "light", "day", "frappe" }
    },

    -- (table)
    -- (boolean) ignore -> toggle ignore dark themes
    -- (list) keywords -> list of keywords that would identify as dark theme
    dark_themes = {
      ignore = false,
      keywords = { "dark", "night", "black" }
    },

    persist = {
      -- enable persisting last theme choice
      enabled = true,

      -- override path to file that execute colorscheme command
      path = "/home/shob/.config/nvim/lua/core/colorscheme.lua"
    },
  },
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require('telescope').load_extension('fzf')
local telescope = require('telescope')
telescope.load_extension('themes')
