---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- fix jump forward not working with NvChad
    ["fj"] = { "<C-i>", opts = { noremap = true } },
    ["<leader>fl"] = { "<cmd> Telescope jumplist <CR>", "open jumplist" },
    ["<leader>fj"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },

    ["gh"] = {"<cmd> ClangdSwitchSourceHeader<CR>", "Switch between header and cpp file"},

    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },

  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}

-- more keybinds!

return M
