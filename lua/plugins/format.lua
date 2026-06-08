return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					-- 🔥 Python (FAST + NO TIMEOUT)
					python = { "ruff_format" },

					-- Web
					javascript = { "prettier" },
					typescript = { "prettier" },
					css = { "prettier" },
					json = { "prettier" },
					go = { "gofumpt" },
					-- Lua
					lua = { "stylua" },
				},

				format_on_save = false,
			})

			-- ✅ Manual format keybind
			vim.keymap.set({ "n", "v" }, "<leader>f", function()
				require("conform").format({
					async = true,
					lsp_fallback = true,
				})
			end, { desc = "Format file" })
		end,
	},

	-- 🔥 Linter
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				python = { "ruff" },
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
