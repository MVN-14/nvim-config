return {
	cmd = { 'svelteserver', "--stdio" },
	filetypes = { 'svelte' },
	root_dir = function(bufnr, on_dir)
		local root_files = { 'package-lock.json', 'yarn.lock', 'pnpm-lock.yaml', 'bun.lockb', 'bun.lock' }
		local fname = vim.api.nvim_buf_get_name(bufnr)
		-- Svelte LSP only supports file:// schema. https://github.com/sveltejs/language-tools/issues/2777
		if vim.uv.fs_stat(fname) ~= nil then
			on_dir(vim.fs.dirname(vim.fs.find(root_files, { path = fname, upward = true })[1]))
		end
	end,
	on_attach = function(client, _)
		-- Workaround to trigger reloading JS/TS files
		-- See https://github.com/sveltejs/language-tools/issues/2008
		vim.api.nvim_create_autocmd('BufWritePost', {
			pattern = { '*.js', '*.ts' },
			group = vim.api.nvim_create_augroup('svelte_js_ts_file_watch', {}),
			callback = function(ctx)
				-- internal API to sync changes that have not yet been saved to the file system
				client:notify('$/onDidChangeTsOrJsFile', { uri = ctx.match })
			end
		})
	end
}
