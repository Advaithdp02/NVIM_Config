return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",

    opts = {
      ensure_installed = {
        "python", "bash", "c", "diff", "html",
        "lua", "luadoc", "markdown", "markdown_inline",
        "query", "vim", "vimdoc"
      },

      auto_install = true,

      highlight = {
        enable = true,

        -- 🔥 IMPORTANT FIX
        additional_vim_regex_highlighting = false,
      },

      -- ⚠️ Disable indent for now (0.12 issue sometimes)
      indent = {
        enable = false,
      },
    },
  },
}
