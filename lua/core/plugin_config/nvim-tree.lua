require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 32,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<c-f>', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')

vim.cmd([[
  :hi link VertSplit CursorLineNr
  :hi link WinSeparator CursorLineNr
  ]])


--[[ vim.cmd([[
  :hi VertSplit guifg=#2c3043 guibg=#2c3043
  :hi WinSeparator guifg=#2c3043 guibg=#2c3043
  ]\]) ]]--
