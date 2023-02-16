local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
	highlight = {
		enable = true,
additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
	ensure_installed = {
		"help",
		"javascript",
		"tsx",
		"json"
	},
	auto_install = true,
	autotag = {
		enable = true,
	}
}
