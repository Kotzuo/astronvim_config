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
  },
}
