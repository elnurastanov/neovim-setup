local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
    }
  },
  pickers = {
    find_files = {
      hidden = true,
    }
  }
}
