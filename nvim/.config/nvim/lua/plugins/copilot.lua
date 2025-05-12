return {
  {
    "zbirenbaum/copilot.lua",
    enabled = true,
    cmd = "Copilot",
    event = "insertEnter",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    }
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = true,
    after = { "copilot.lua" },
  }
}
