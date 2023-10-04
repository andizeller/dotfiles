--[[

Neovim init file
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')
require('lsp/lspconfig')
require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
require('plugins/compiler-explorer')


vim.opt.cursorline = true         -- Enable cursor line
vim.opt.cursorcolumn = true
vim.opt.showcmd = true                -- show (partial) command in status line
vim.opt.showmatch = true               -- show matching brackets
vim.opt.showmode  = true               -- Show current mode
vim.opt.ruler = true                   -- Show line and column numbers of the cursor
vim.opt.textwidth = 0             -- Hard wrap long lines as you type them
vim.opt.expandtab = true               -- Insert spaces when tab is pressed
vim.opt.tabstop = 4               -- Tab is 4 spaces
vim.opt.shiftwidth = 4            -- Indentation amounts
vim.opt.clipboard = unnamedplus   -- Sync register with system clipboard
vim.opt.autoindent = true              -- Enable auto indentation
vim.opt.ignorecase = true              -- Set case insensitive by default (can be changed by adding \C to the search string)

--vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
