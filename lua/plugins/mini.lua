vim.pack.add({
	{ src = 'https://github.com/echasnovski/mini.pick' },
	{ src = 'https://github.com/echasnovski/mini.icons' },
	{ src = 'https://github.com/echasnovski/mini.pairs' },
	{ src = 'https://github.com/echasnovski/mini.statusline' },
	{ src = 'https://github.com/nvim-mini/mini.comment' },
	{ src = 'https://github.com/echasnovski/mini-git' },
})

require('mini.pick').setup()
require('mini.icons').setup()
require('mini.pairs').setup()
require('mini.statusline').setup()
require('mini.git').setup()

require('mini.comment').setup({
	mappings = {
		-- Toggle comment (like `gcip` - comment inner paragraph) for both
		-- Normal and Visual modes
		comment = 'gc',

		-- Toggle comment on current line
		comment_line = '<leader>cc',

		-- Toggle comment on visual selection
		comment_visual = '<leader>cc',

		-- Define 'comment' textobject (like `dgc` - delete whole comment block)
		-- Works also in Visual mode if mapping differs from `comment_visual`
		textobject = 'gc',
	},
})


-- Pick Keymaps
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", { desc = "mini.pick - [F]ind [F]iles", silent = true })
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>", { desc = "mini.pick - [F]ind [H]elp", silent = true })
