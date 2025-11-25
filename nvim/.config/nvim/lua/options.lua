require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.foldexpr = 'nvim_treesitter#foldexpr()' -- to enable treesitter folding
o.foldmethod = 'expr' -- to enable treesitter folding
o.foldenable = false -- do not fold by default
o.tabstop = 4
o.laststatus = 3-- views can only be fully collapsed with the global statusline

-- Enable folding for C++ files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c", "h", "hpp" },
  callback = function()
    vim.opt_local.foldenable = true
    vim.opt_local.foldlevel = 99
    vim.opt_local.foldlevelstart = 99
  end,
}) 
