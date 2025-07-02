return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "cpp", "yaml" },
        highlight = { enable = true },
      }
    end,
  },
  {
    "RRethy/vim-illuminate",
    event = {"BufRead", "BufWinEnter"},
    config = function()
      require("illuminate").configure({
        -- Example configuration options (you can adjust as needed)
        delay = 100,
        filetypes_denylist = { "NvimTree", "packer" },
        providers = { "lsp", "treesitter", "regex" },
        under_cursor = true,
      })
    end,
  },
  {
    "onsails/lspkind-nvim",
    lazy = true,
  },
}
