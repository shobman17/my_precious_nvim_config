require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'mbc',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
