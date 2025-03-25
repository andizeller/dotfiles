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

  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = {"InsertEnter", "BufEnter", "BufRead"},
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_accept = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<A-l>",
            accept_word = false,
            accept_line = false,
            next = "<A-j>",
            prev = "<A-k>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 16.x
        server_opts_overrides = {},
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup {
          ensure_installed = { "cpp" },
          highlight = { enable = true },
        }
      end,
  },
  {
    "hrsh7th/nvim-cmp",
      config = function()
        require("configs.cmp")
      end,
  },
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-cmdline"},
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
      "Civitasv/cmake-tools.nvim",
      ft = {"cpp", "c", "cmake"},
      opts = {
          cmake_command = "cmake", -- Path to CMake command
          cmake_build_directory = "build", -- Build directory
          cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
          cmake_build_options = {"-j24"},
      },
  },
}
