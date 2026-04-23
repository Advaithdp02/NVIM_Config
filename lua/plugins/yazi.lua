return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>e",
        "<cmd>Yazi<cr>",
        desc = "Open Yazi file manager",
      },
    },
    opts = {
      open_for_directories = false,
    },
  },
}
