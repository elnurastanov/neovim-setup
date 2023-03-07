local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
    }
  },
  pickers = {
    find_files = {
      hidden = true,
    }
  }
}
