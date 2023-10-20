vim.g.mapleader = " "
vim.keymap.set("n", "<leader>m", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
vim.keymap.set("i", "<c-h>", "<c-w>", { noremap = true })
vim.keymap.set("i", "<C-Del>", "<c-o>daw", { noremap = true })

vim.keymap.set("n", "<leader>=", "gg<Home>vG<End>=", { noremap = true })
vim.keymap.set("n", "<leader><Del>a", "gg<Home>vG<End><Del>", { noremap = true })
vim.keymap.set("n", "<leader>sa", "gg<Home>vG<End>", { noremap = true })

