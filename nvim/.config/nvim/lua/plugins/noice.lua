-- lazy.nvim
return {
  "folke/noice.nvim",
  enabled = false,
  event = "VeryLazy",
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
      -- Optional: disable LSP messages if you don't want them
      progress = { enabled = false },
      message = { enabled = false },
      hover = { enabled = false },
      signature = { enabled = false },
    },
    -- Disable the default notification view
    views = {
      notify = {
        enabled = false,
      },
    },
    -- Filter what messages are shown
    routes = {
      -- Show only command line and search messages
      {
        filter = {
          event = "msg_show",
          kind = { "cmdline" },
        },
        view = "popup",
      },
      -- Skip all other messages
      {
        filter = {
          event = "msg_show",
          kind = { "", "search_count", "echo", "wmsg", "emsg", "lua_error", "msg", "return_prompt" },
        },
        opts = { skip = true },
      },
    },

  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  }
}
