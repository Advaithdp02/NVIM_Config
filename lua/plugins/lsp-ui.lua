return {
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lspsaga").setup({})
      
      -- 🔍 Preview definition
      vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition" })

      -- gr (references) intentionally omitted: handled by lsp.lua's LspAttach buffer-local mapping
    end,
  },
}
