return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pyright",
					"lua_ls",
					"ts_ls",
					"gopls",
					"cssls",
					"jsonls",
				},
			})
		end,
	},

	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- Python
					"black",
					"ruff",

					-- JS
					"prettier",
					"eslint_d",

					-- Lua
					"stylua",

					-- Go
					"gofumpt",
				},
			})
		end,
	},
}
