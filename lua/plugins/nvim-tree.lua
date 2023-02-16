local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

tree.setup({
	sort_by = "name",
	view = {
		width = 30,
		side = "left"
	},
	renderer = {
		icons = {
			webdev_colors = true,
			git_placement = "before",
			modified_placement = "after",		
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
				modified = true,
			},
		}
	},
	filters = {
		dotfiles = true
	}
})

vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>ft", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
