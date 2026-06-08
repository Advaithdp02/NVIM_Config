return {
  -- Highlight colors (hex/rgb preview)
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },

  -- Orgmode (notes, agenda)
  {
    "nvim-orgmode/orgmode",
    ft = { "org" }, -- load only for org files (faster startup)
    config = function()
      require("orgmode").setup({
        org_agenda_files = "~/orgfiles/**/*",
        org_default_notes_file = "~/orgfiles/refile.org",
      })
    end,
  },
}
