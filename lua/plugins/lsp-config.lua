return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "gradle_ls", "groovyls"}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.gradle_ls.setup({})
			lspconfig.groovyls.setup({
				cmd = {"java", "-jar", "/Users/terry/.config/groovyls/groovy-language-server-all.jar" },
				filetypes = {"groovy", "gradle"},
			})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
		end
	}
}
