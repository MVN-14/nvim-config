vim.keymap.set("n", "<leader>nh", ":nohl<Enter>", { desc = "Set [N]o [H]ghlight", silent = true })
vim.keymap.set({"i","v" }, "<C-c>", "<esc>", { desc = "Remap Ctrl-C to ESC" })
vim.keymap.set("n", "<Tab>", "<C-^>", { desc = "Remap Tab to Alternate File"})
vim.keymap.set({"n", "v"}, "<leader>va", "<C-c>gg0vG$", {desc = "[V]isual Select [A]ll"})

-- move lines up and down
vim.keymap.set("n", "<S-Up>", ':m -2<CR>v=', { desc = "Move line up" })
vim.keymap.set("n", "<S-Down>", ':m +1<CR>v=', { desc = "Move line down" })
vim.keymap.set("i", "<S-Up>", '<Esc>:m -2<CR>v=i', { desc = "Move line up" })
vim.keymap.set("i", "<S-Down>", '<Esc>:m +1<CR>v=i', { desc = "Move line down" })
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })


-- LSP
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "[F]or[M]at" })
