vim.pack.add({
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'master' }
})

local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
	vim.notify(configs, vim.log.levels.ERROR)
else
	configs.setup({
		ensure_installed = { 'lua', 'svelte', 'typescript' },
		auto_install = true,

		highlight = {
			enable = true,
		}
	})

	vim.api.nvim_create_autocmd('PackChanged', {
		desc = 'Handle nvim-treesitter updates',
		group = vim.api.nvim_create_augroup('nvim-treesitter-pack-changed-update-handler', { clear = true }),
		callback = function(event)
			if event.data.kind == 'update' then
				vim.notify('nvim-treesitter updated, running TSUpdate...', vim.log.levels.INFO)
				---@diagnostic disable-next-line: param-type-mismatch
				ok = pcall(vim.cmd, 'TSUpdate')
				if ok then
					vim.notify('TSUpdate completed successfully.', vim.log.levels.INFO)
				else
					vim.notify('TSUpdate comand not available yet, skipping', vim.log.levels.WARN)
				end
			end
		end
	})
end
