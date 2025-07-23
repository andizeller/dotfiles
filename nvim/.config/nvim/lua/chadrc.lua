-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@class ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

M.colorify = {
  enabled = false,
}

-- Function to toggle between header and cpp file
M.switch_header_cpp = function()
    local file = vim.fn.expand("%")
    if file:match("%.h$") then
        vim.cmd("edit " .. file:gsub("%.h$", ".cpp"))
    elseif file:match("%.cpp$") then
        vim.cmd("edit " .. file:gsub("%.cpp$", ".h"))
    else
        print("Not a .h or .cpp file!")
    end
end

-- Keybinding
vim.api.nvim_set_keymap("n", "gh", ":lua require('chadrc').switch_header_cpp()<CR>", { noremap = true, silent = true })

return M
