return {
  "piersolenski/telescope-import.nvim",
  dependencies = "nvim-telescope/telescope.nvim",
  config = function() require("telescope").load_extension "import" end,
  keys = {
    { "<C-i>", "<cmd>Telescope import<cr>", desc = "Add import" },
  },
}
