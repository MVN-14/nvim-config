local dap = require('dap')
local dapui = require("dapui")

dapui.setup()

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/mvn/Dev/C++/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch File",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = 'enable pretty printing',
        ignoreFailures = false
      }
    }
  }
}

vim.keymap.set("n", "<F5>", function()
  dap.continue()
  dapui.open()
end)
vim.keymap.set("n", "<leader>duo", function() dapui.open() end)
vim.keymap.set("n", "<leader>duc", function() dapui.close() end)


vim.keymap.set("n", "<leader>so", function() dap.step_over() end)
vim.keymap.set("n", "<leader>si", function() dap.step_into() end)
vim.keymap.set("n", "<leader>sb", function() dap.step_out() end)
vim.keymap.set("n", "<leader>bp", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dr", function() dap.repl.open() end)

