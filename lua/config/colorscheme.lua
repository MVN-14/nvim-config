vim.pack.add({
	{ src = 'https://github.com/catppuccin/nvim', name = "catppuccin" }
})
vim.cmd.colorscheme('catppuccin')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })


