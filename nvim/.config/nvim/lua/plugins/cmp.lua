local cmp = require("cmp")

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
    opts = {
      snippet = {
        expand = function(args)
          vim.fn"vsnip#anonymous"
        end,
      },
      mapping = {
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      },
      sources = cmp.config.sources({
        { name = "copilot"},
        { name = "nvim_lsp" },
        { name = "buffer" },
      }),
    }
  }
}

