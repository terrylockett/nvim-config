vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})



-- Debug Adapter
vim.keymap.set("n", "<leader>b", function() require'dap'.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>tc", function() require'jdtls'.test_class() end)
vim.keymap.set("n", "<leader>tm", function() require'jdtls'.test_nearest_method() end)


-- NetoTest
	--run current file
vim.keymap.set("n", "<leader>gtf", function() require("neotest").run.run(vim.fn.expand("%")) end)

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
