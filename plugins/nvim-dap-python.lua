return {
  "mfussenegger/nvim-dap-python",
  ft = { "python" },
  config = function() require("dap-python").setup() end,
}
