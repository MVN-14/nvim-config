local trouble = require('trouble')
trouble.setup{}

vim.keymap.set('n', '<leader>e', function() trouble.toggle() end)
