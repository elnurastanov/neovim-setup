local status, saga = pcall(require, "lspsaga")
if(not status) then return end

saga.setup {
	server_filetype_map = {}
}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>sc', '<Cmd>Lspsaga show_cursor_diagnostics<cr>', opts)
vim.keymap.set('n', '<leader>sd', '<Cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>lspsaga peek_defination<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>lspsaga rename<cr>', opts)
