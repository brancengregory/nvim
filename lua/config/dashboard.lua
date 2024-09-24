local dashboard = require('dashboard')

dashboard.setup({
  theme = 'hyper',
  config = {
    week_header = {
      enable = true,
    },
    shortcut = {
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
    },
    packages = { enable = false },
    project = { enable = false },
    --footer = {
    --'',
    --  '“The least advantaged are not, if all goes well, the unfortunate and unlucky,',
    --  'objects of our charity and compassion, much less our pity,',
    --  'but those to whom reciprocity is owed as a matter of basic justice.”',
    --  '-John Rawls (JF, 139).'
    --},
  },
})

-- Highlight groups for `dashboard-nvim`
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff79c6" })  -- Custom color for the header (Dracula pink)
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#8be9fd" })  -- Custom color for the center text (Dracula cyan)
vim.api.nvim_set_hl(0, "DashboardShortCut", { fg = "#50fa7b" })  -- Custom color for the shortcuts (Dracula green)
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#f1fa8c", bold = true })  -- Custom color for the footer (Dracula yellow)
