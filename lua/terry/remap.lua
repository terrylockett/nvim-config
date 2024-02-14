vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Debug Adapter
vim.keymap.set("n", "<leader>b", function() require'dap'.toggle_breakpoint() end)



-- BarBar
	-- move tabs 
vim.keymap.set('n', '<leader>[', '<Cmd>BufferPrevious<CR>', {})
vim.keymap.set('n', '<leader>]', '<Cmd>BufferNext<CR>', {})
	-- reorder tabs
vim.keymap.set('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', {})
vim.keymap.set('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', {})
	--close Buffer
vim.keymap.set('n', '<leader>w', '<Cmd>BufferClose<CR>', {})
-- Global diagnostic Mappins
-- vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
