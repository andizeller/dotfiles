require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("v", ">", ">gv", { noremap = true })
map("v", "<", "<gv", { noremap = true })

-- Define the script to format the file
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*", -- Adjust the pattern to match specific file types if needed (e.g., "*.py")
    callback = function()
        vim.fn.system("~/Development/efg_infrastructure_cea_terminals/formatFiles.sh -f " .. vim.fn.expand("%"))
        vim.cmd("edit")
    end,
})


vim.keymap.set('n', '<leader>fs', function()
  require('telescope.builtin').lsp_workspace_symbols({ query = vim.fn.expand('<cword>') })
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fd', function()
  require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })
end, { noremap = true, silent = true })
