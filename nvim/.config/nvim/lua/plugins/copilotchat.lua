return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      -- mappings = {
      --   submit_prompt = {
      --     normal = '<Leader>s',
      --     insert = '<C-s>'
      --   },
      --   show_diff = {
      --     full_diff = true
      --   }
      -- },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
