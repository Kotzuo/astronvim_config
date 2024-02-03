return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    -- Tmux 
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", desc = "window left"},
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", desc = "window right"},
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<CR>", desc = "window down"},
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<CR>", desc = "window up"},
    -- Rust
    ["<leader>k"] = { "<cmd>RustHoverActions<CR>", desc = "Show rust hover actions"},
    -- Formatting
    ["<leader>lF"] = { "<cmd>noa w<CR>", desc = "Save without formatting"},
    -- Vscode launch json
    ["<leader>dc"] = {
      function()
        if vim.fn.filereadable('.vscode/launch.json') then
          require('dap.ext.vscode').load_launchjs()
        end  
        require("dap").continue()
      end,
      desc = "Start/Continue (F5)"
    },
  },
}
