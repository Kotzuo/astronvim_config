return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    -- Tmux
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", desc = "window left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", desc = "window right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<CR>", desc = "window down" },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<CR>", desc = "window up" },
    -- Formatting
    ["<leader>lF"] = { "<cmd>noa w<CR>", desc = "Save without formatting" },
    -- Neotest
    ["<leader>ts"] = { "<cmd>lua require('neotest').summary.toggle()<CR>", desc = "Toggle test summary" },
    ["<leader>ta"] = { "<cmd>lua require('neotest').run.run()<CR>", desc = "Run the nearest test" },
    ["<leader>td"] = {
      "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>",
      desc = "Run the nearest test (DEBUG)",
    },
    ["<leader>tF"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", desc = "Run file tests" },
    ["<leader>tD"] = {
      "<cmd>lua require('neotest').run.run(vim.fn.expand('%'), {strategy = 'dap'})<CR>",
      desc = "Run file tests (DEBUG)",
    },
    ["<leader>tQ"] = { "<cmd>lua require('neotest').run.stop()<CR>", desc = "Stop the nearest test" },
    ["<leader>tA"] = { "<cmd>lua require('neotest').run.attach()<CR>", desc = "Attach to nearest test" },
    ["<leader>to"] = { "<cmd>lua require('neotest').output_panel.toggle()<CR>", desc = "Toggle test output" },
    ["<leader>tP"] = { "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<CR>", desc = "Run all tests" },
    -- Vscode launch json
    ["<leader>dc"] = {
      function()
        if vim.fn.filereadable ".vscode/launch.json" then require("dap.ext.vscode").load_launchjs() end
        require("dap").continue()
      end,
      desc = "Start/Continue (F5)",
    },
  },
}
