vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

-- 24 bit colo bby
vim.opt.termguicolors = true

-- relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- incremental search
vim.opt.incsearch = true


-- always enable sign colum to prevent screen "jumping"
vim.opt.signcolumn = "yes"


-- system clip board
vim.opt.clipboard = "unnamed,unnamedplus"

-- cursor line highligh
vim.opt.cursorline = true

-- keep cursor 8 lines in
vim.opt.scrolloff = 8


-- colunm width line
vim.opt.colorcolumn = "100"
