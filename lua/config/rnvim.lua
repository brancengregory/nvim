local R = require('r')

-- Configure R.nvim to use tmux
R.setup({
  -- Use tmux for sending commands
  external_term = "tmux split-window -v",

  R_app = "radian",
  
  -- Arguments for R
  R_args = {
    "--no-save",
    "--quiet"
  },

  auto_start = "on startup",
  objbr_auto_start = true,
  bracketed_paste = true,
  auto_quit = false,

  hook = {
    on_filetype = function()
      vim.keymap.set("n", "<Enter>", "<Plug>RDSendLine", { noremap = true, buffer = true, desc = "Send Line to R" })
      vim.keymap.set("v", "<Enter>", "<Plug>RSendSelection", { noremap = true, buffer = true, desc = "Send Selection to R" })
    end
  }
})
