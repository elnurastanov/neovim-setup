local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

telescope.setup {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git",
		},
	},
	pickers = {
		find_files = {
			hidden = true,
			theme = "dropdown",
			layout_config = {
				width = 0.7
			},
		},
		live_grep = {
			theme = "dropdown",
			layout_config = {
				width = 0.7
			},
		}
	}
}
