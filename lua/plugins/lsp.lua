return {
	-- LSP setup
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			vim.diagnostic.config({
				virtual_text = true,
				underline = true,
				signs = true,
				update_in_insert = false,
			})
			local caps = require("cmp_nvim_lsp").default_capabilities()

			-- 🔹 Global keymaps
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local buf = args.buf
					local map = function(mode, lhs, rhs)
						vim.keymap.set(mode, lhs, rhs, { buffer = buf })
					end

					map("n", "K", vim.lsp.buf.hover)
					map("n", "gd", vim.lsp.buf.definition)
					map("n", "gr", vim.lsp.buf.references)
					map("n", "<F2>", vim.lsp.buf.rename)
					map("n", "<F4>", vim.lsp.buf.code_action)
					map("n", "gl", vim.diagnostic.open_float)
				end,
			})

			-- 🔹 Python
			vim.lsp.config("pyright", {
				capabilities = caps,
				settings = {
					python = {
						analysis = {
							typeCheckingMode = "basic",
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
						},
					},
				},
			})

			-- 🔹 Lua
			vim.lsp.config("lua_ls", {
				capabilities = caps,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			-- 🔹 TS/JS
			vim.lsp.config("ts_ls", {
				capabilities = caps,
			})

			-- 🔹 CSS
			vim.lsp.config("cssls", {
				capabilities = caps,
			})

			-- 🔹 JSON
			vim.lsp.config("jsonls", {
				capabilities = caps,
			})
			-- 🔹 Go
			vim.lsp.config("gopls", {
				capabilities = caps,
				settings = {
					gopls = {
						gofumpt = true,
						usePlaceholders = true,
						completeUnimported = true,
						staticcheck = true,
						analyses = {
							unusedparams = true,
							shadow = true,
						},
					},
				},
			})

			-- 🔥 Enable all
			vim.lsp.enable("pyright")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("cssls")
			vim.lsp.enable("jsonls")
			vim.lsp.enable("gopls")
		end,
	},
}
