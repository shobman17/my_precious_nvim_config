vim.wo.number = true
-- vim.wo.relativenumber = true

vim.o.termguicolors = true
-- vim.o.background = dark
-- maintain transparency of background in terminal 
-- vim.cmd [[ highlight Normal     ctermbg=NONE guibg=NONE]]
-- vim.cmd [[ highlight LineNr     ctermbg=NONE guibg=NONE]]
-- vim.cmd [[ highlight SignColumn ctermbg=NONE guibg=NONE]]
vim.cmd [[ set clipboard+=unnamedplus ]]

-- vim.opt.fillchars.vert = " "
vim.opt.fillchars = {
    vert = "▏", -- alternatives │
    fold = " ",
    eob = " ", -- suppress ~ at EndOfBuffer
    diff = "╱", -- alternatives = ⣿ ░ ─
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸",
}

 

