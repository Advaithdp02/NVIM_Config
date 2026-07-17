# nvim config

A modular [Neovim](https://neovim.io/) configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Structure

```
init.lua               # Entry point
lua/
├── config/
│   ├── options.lua    # Editor options
│   ├── keybinds.lua   # Global keymaps
│   └── lazy.lua       # Plugin manager bootstrap
└── plugins/           # Per-plugin configs (auto-loaded)
```

## Plugins

| Category | Plugins |
|----------|---------|
| Plugin Manager | [lazy.nvim](https://github.com/folke/lazy.nvim) |
| Colorscheme | [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) |
| Statusline | [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) |
| Icons | [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) |
| Fuzzy Finding | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim), [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) |
| File Manager | [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) |
| LSP | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason.nvim](https://github.com/williamboman/mason.nvim), [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim), [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) |
| Completion | [nvim-cmp](https://github.com/hrsh7th/nvim-cmp), [LuaSnip](https://github.com/L3MON4D3/LuaSnip), cmp-buffer, cmp-nvim-lsp, cmp-path, cmp_luasnip |
| Treesitter | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) |
| Format & Lint | [conform.nvim](https://github.com/stevearc/conform.nvim), [nvim-lint](https://github.com/mfussenegger/nvim-lint) |
| Git | [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim), [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) |
| Navigation | [harpoon](https://github.com/ThePrimeagen/harpoon) (harpoon2) |
| Jump/Search | [flash.nvim](https://github.com/folke/flash.nvim) |
| Diagnostics | [trouble.nvim](https://github.com/folke/trouble.nvim) |
| Autopairs | [nvim-autopairs](https://github.com/windwp/nvim-autopairs) |
| Keymap Help | [which-key.nvim](https://github.com/folke/which-key.nvim) |
| Notes | [orgmode](https://github.com/nvim-orgmode/orgmode) |
| Highlight | [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors) |
| Utility | [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) |

## Keymaps

> Leader key: `<Space>`

### General

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<leader>cd` | Open Netrw (`:Ex`) |
| `n` | `<leader>e` | Open Yazi file manager |

### LSP (buffer-local)

| Mode | Key | Action |
|------|-----|--------|
| `n` | `K` | Hover documentation |
| `n` | `gd` | Go to definition |
| `n` | `gr` | Find references |
| `n` | `gp` | Peek definition |
| `n` | `gl` | Show diagnostic float |
| `n` | `<F2>` | Rename symbol |
| `n` | `<F4>` | Code actions |

### Telescope

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<leader>ff` | Find files |
| `n` | `<leader>fg` | Live grep |
| `n` | `<leader>fb` | Buffers |
| `n` | `<leader>fh` | Help tags |

### Harpoon

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<leader>a` | Add file to list |
| `n` | `<C-e>` | Toggle quick menu |
| `n` | `<C-p>` | Previous file |
| `n` | `<C-n>` | Next file |
| `n` | `<leader>fl` | Harpoon picker (Telescope) |

### Git

| Mode | Key | Action |
|------|-----|--------|
| `n` | `]h` | Next hunk |
| `n` | `[h` | Prev hunk |
| `n` | `<leader>hs` | Stage hunk |
| `n` | `<leader>hr` | Reset hunk |
| `n` | `<leader>hp` | Preview hunk |
| `n` | `<leader>gg` | Open LazyGit |

### Flash

| Mode | Key | Action |
|------|-----|--------|
| `n`, `x`, `o` | `s` | Flash jump |
| `n`, `x`, `o` | `S` | Flash treesitter |
| `o` | `r` | Remote flash |
| `o`, `x` | `R` | Treesitter search |
| `c` | `<C-S>` | Toggle flash search |

### Diagnostics

| Mode | Key | Action |
|------|-----|--------|
| `n` | `<leader>xx` | Toggle Trouble diagnostics |

### Format

| Mode | Key | Action |
|------|-----|--------|
| `n`, `v` | `<leader>f` | Format file |

### Completion (insert mode)

| Mode | Key | Action |
|------|-----|--------|
| `i` | `<C-Space>` | Trigger completion |
| `i` | `<Tab>` | Select next item |
| `i` | `<S-Tab>` | Select prev item |
| `i` | `<CR>` | Confirm selection |

## Features

- **TokyoNight** colorscheme with transparency
- **LSP** servers: pyright, lua_ls, ts_ls, cssls, jsonls, gopls
- **Formatters**: black, ruff, prettier, stylua, gofumpt
- **Linters**: ruff, eslint_d (auto-lint on write & insert leave)
- **Treesitter** parsers for Python, Bash, C, Lua, Markdown, HTML, Vim, Go
- **Orgmode** with agenda files in `~/orgfiles/`
- Format on save is **disabled** — format manually with `<leader>f`
