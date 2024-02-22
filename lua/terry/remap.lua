vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>o', vim.diagnostic.open_float, {})

-- Debug Adapter
vim.keymap.set("n", "<leader>b", function() require'dap'.toggle_breakpoint() end)

-- NetoTest
vim.keymap.set("n", "<leader>tc", function() require("neotest").run.run(vim.fn.expand("%")) end)
vim.keymap.set("n", "<leader>tm", function() require("neotest").run.run() end)
vim.keymap.set("n", "<leader>td", function() require("neotest").run.run({strategy = "dap"}) end)
vim.keymap.set("n", "<leader>ts", function() require("neotest").run.stop() end)

vim.keymap.set("n", "<leader>to", function() require("neotest").output.open() end)
vim.keymap.set("n", "<leader>tp", function() require("neotest").output_panel.toggle() end)
vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end)

vim.keymap.set("n", "<leader>tl", function() require("neotest").run.run({vim.fn.expand("%:p:h"), extra_args = {"module"}}) end)

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
