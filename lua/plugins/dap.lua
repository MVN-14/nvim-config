vim.pack.add({
	{ src = 'https://github.com/mfussenegger/nvim-dap' },
	{ src = 'https://github.com/igorlfs/nvim-dap-view' },
	{ src = 'https://github.com/leoluz/nvim-dap-go'}
})

require('dap-go').setup()

local dap = require("dap")
local dap_view = require("dap-view")

-- dap
vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "[D]ap [T]oggle Breakpoint", silent = true })
vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "[D]ap [Q]uit", silent = true })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "[D]ap [C]ontinue", silent = true })
vim.keymap.set("n", "<leader>dso", dap.step_over, { desc = "[D]ap [S]tep [O]ver", silent = true })
vim.keymap.set("n", "<leader>dsi", dap.step_into, { desc = "[D]ap [S]tep [I]nto", silent = true })
vim.keymap.set("n", "<leader>ddb", dap.clear_breakpoints, { desc = "[D]ap [D]elete [B]reakpoints", silent = true })

-- dap-view
vim.keymap.set("n", "<leader>dvt", dap_view.toggle, { desc = "[D]ap [V]iew [T]oggle", silent = true })


