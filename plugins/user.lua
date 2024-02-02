return {
  {
    "ThePrimeagen/vim-be-good",
    cmd = {
      "VimBeGood"
    }
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    'andweeb/presence.nvim',
    lazy = false,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}
