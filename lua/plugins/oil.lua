vim.pack.add({ 'https://github.com/stevearc/oil.nvim' })

require('oil').setup({
	view_options = {
		show_hidden = true
	}
})

vim.keymap.set('n', '<leader>e', ':Oil<CR>', { desc = 'open [E]xplorer', silent = true })
