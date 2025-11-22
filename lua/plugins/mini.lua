vim.pack.add({
	{ src = 'https://github.com/echasnovski/mini.pick' },
	{ src = 'https://github.com/echasnovski/mini.pairs' },
	{ src = 'https://github.com/echasnovski/mini.statusline' },
	{ src = 'https://github.com/nvim-mini/mini.comment' },
	{ src = 'https://github.com/echasnovski/mini-git' },
	{ src = 'https://github.com/nvim-mini/mini.completion' },
	{ src = 'https://github.com/nvim-mini/mini.icons' },
	{ src = 'https://github.com/nvim-mini/mini.snippets' },
})

require('mini.pick').setup()
require('mini.icons').setup()
require('mini.pairs').setup()
require('mini.statusline').setup()
require('mini.git').setup()
require('mini.completion').setup()
require('mini.icons').setup()

require('mini.comment').setup({
	mappings = {
		comment = 'gc',
		comment_line = '<leader>cc',
		comment_visual = '<leader>cc',
		textobject = 'gc',
	},
})

local gen_loader = require('mini.snippets').gen_loader
require('mini.snippets').setup({
	snippets = {
		gen_loader.from_file('~/.config/nvim/snippets/global.lua'),
		gen_loader.from_lang(),
	},
})
require('mini.snippets').start_lsp_server({ match = false })

vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", { desc = "mini.pick - [F]ind [F]iles", silent = true })
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>", { desc = "mini.pick - [F]ind [H]elp", silent = true })
