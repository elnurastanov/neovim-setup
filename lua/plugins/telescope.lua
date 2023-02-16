local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

