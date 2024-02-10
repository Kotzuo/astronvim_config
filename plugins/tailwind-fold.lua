return {
  "razak17/tailwind-fold.nvim",
  opts = {},
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "html", "svelte", "astro", "vue", "typescriptreact", "php", "blade" },
  keys = {
    { "<leader>lt", "<cmd>TailwindFoldToggle<cr>", desc = "Fold/Unfold tailwind classes" },
  },
}
