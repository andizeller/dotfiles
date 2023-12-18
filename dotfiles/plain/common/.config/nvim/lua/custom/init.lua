local g = vim.g

local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- Remove whitespace on save
autocmd('BufWritePre', {
  pattern = '',
  command = ":%s/\\s\\+$//e"
})

-- Don't auto commenting new lines
autocmd('BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o'
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.cpp", "*.h" },
  command = [[ silent! ! /usr/bin/astyle  -A1OSKCSNM80fpDUjcwk1xWm0 --options=none --suffix=none % ]],
})
