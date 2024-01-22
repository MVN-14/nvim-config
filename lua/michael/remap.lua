vim.g.mapleader = " "
vim.keymap.set("n", "<C-e>", vim.cmd.NvimTreeOpen, {noremap = true})
vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeClose, {noremap = true})
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
vim.keymap.set("i", "<c-h>", "<c-o>db", { noremap = true })
--vim.keymap.set("i", "<C-Del>", "<c-o>dw", { noremap = true })

vim.keymap.set("n", "<leader>=", "gg<Home>vG<End>=", { noremap = true })
vim.keymap.set("n", "<leader><Del>a", "gg<Home>vG<End><Del>", { noremap = true })
vim.keymap.set("n", "<leader>sa", "gg<Home>vG<End>", { noremap = true })

-- vim.keymap.set("n", "<leader><leader>c", "<Home>i/*<Esc><End>a*/", { noremap = true })
-- vim.keymap.set("n", "<leader><leader>uc", "<Home>i<Del><Del><Esc><End><Del><Del>", { noremap = true })
