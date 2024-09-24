-- in your init.lua or a specific config file for key mappings
local wk = require("which-key")

wk.add(
  -- Global leader bindings
  {
    { "<leader>f", group = "Files" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
    { "<leader>g", group = "Git" },
    { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git Commit" },
    { "<leader>gp", "<cmd>Git push<cr>", desc = "Git Push" },
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git Status" },
  }


  -- Non-leader keybindings
  --["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "Move Left in tmux" },
  --["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "Move Down in tmux" },
  --["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "Move Up in tmux" },
  --["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "Move Right in tmux" },
)

