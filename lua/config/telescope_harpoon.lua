require('telescope').setup({
  defaults = {
    -- Other Telescope defaults
  },
  pickers = {
    -- Customize your pickers, e.g.,
    find_files = {
      theme = "dropdown",
      hidden = true,
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- Enable fuzzy search
      override_generic_sorter = true,  -- Override the default generic sorter
      override_file_sorter = true,     -- Override the default file sorter
      case_mode = "smart_case",        -- "smart_case" | "ignore_case" | "respect_case"
    }
  }
})

-- Load the FZF extension
require('telescope').load_extension('fzf')

local harpoon = require('harpoon')
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)


