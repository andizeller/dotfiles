require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.foldexpr = 'nvim_treesitter#foldexpr()' -- to enable treesitter folding
o.foldmethod = 'expr' -- to enable treesitter folding
o.foldenable = false -- do not fold by default
o.tabstop = 4
o.laststatus = 3-- views can only be fully collapsed with the global statusline 
