return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    "folke/todo-comments.nvim",
    keys = {
      { "]T", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
      { "[T", function() require("todo-comments").jump_next() end, desc = "Previous todo comment" },
      { "<leader>T", "<cmd>TodoTrouble<cr>", desc = "Show all todo's" },
    },
  },
  { import = "astrocommunity.test.neotest" },
  {
    "nvim-neotest/neotest",
    opts = function()
      return {
        adapters = {
          require "neotest-python" {
            runner = "pytest",
            pytest_discover_instances = true,
          },
        },
      }
    end,
  },
}
