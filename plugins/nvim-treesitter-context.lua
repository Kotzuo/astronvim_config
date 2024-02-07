return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "User AstroFile",
  cmd = { "TSContextEnable", "TSContextDisable", "TSContextToggle" },
  keys = {
    {
      "[c",
      function() require("treesitter-context").go_to_context(vim.v.count1) end,
      desc = "Jump to context",
      silent = true,
    },
  },
}
