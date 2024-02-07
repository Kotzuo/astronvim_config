return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  {
    "simrat39/rust-tools.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
    },
  },
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
}
