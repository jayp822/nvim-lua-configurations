return {
   
	{
		"williamboman/mason.nvim",
		lazy = false,
    config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = { auto_install = true, },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"jdtls",
					"tailwindcss",
					"sqlls",
					"pylsp",
					"texlab",
					"html",
					"dockerls",
					"cssls",
					"clangd",
          "grammarly",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({capabilities = capabilities})
			lspconfig.tailwindcss.setup({capabilities = capabilities})
			lspconfig.sqlls.setup({capabilities = capabilities})
			lspconfig.pylsp.setup({capabilities = capabilities})
			lspconfig.texlab.setup({capabilities = capabilities})
			lspconfig.html.setup({capabilities = capabilities})
			lspconfig.dockerls.setup({capabilities = capabilities})
			lspconfig.cssls.setup({capabilities = capabilities})
			lspconfig.clangd.setup({capabilities = capabilities})
			lspconfig.grammarly.setup({capabilities = capabilities})


			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
