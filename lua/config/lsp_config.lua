vim.lsp.enable('lua_ls')
vim.lsp.enable('svelte')
vim.lsp.enable('cssls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('html')
vim.lsp.enable('gopls')
vim.lsp.enable('bashls')
vim.lsp.enable('jsonls')
vim.lsp.enable('pyright')

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'fuzzy', 'popup' }
			vim.keymap.set('i', '<C-Space>', vim.lsp.completion.get, { desc = "Show Autocompletion" })
			vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, { desc = "[R]ename [S]ymbol" })
			vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "[F]or[M]at" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]o to [D]efinition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "[G]o to [R]eferences" })
		end
	end
})

vim.diagnostic.config({
	underline = true,
	virtual_text = true
})
