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

      -- 🔍 Peek references
      vim.keymap.set("n", "gr", "<cmd>Lspsaga peek_references<CR>", { desc = "Peek References" })
    end,
  },
}
