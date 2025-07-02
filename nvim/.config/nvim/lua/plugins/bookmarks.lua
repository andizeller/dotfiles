
return {
  {
    "MattesGroeger/vim-bookmarks",
    lazy = false,
  },
  {
    "tom-anders/telescope-vim-bookmarks.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("vim_bookmarks")
    end,
  },
}
