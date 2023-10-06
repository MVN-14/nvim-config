-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --     use({
    --         'bluz71/vim-moonfly-colors',
    --         as = 'moonfly'
    --     })

    use({'sainnhe/everforest', as = 'everforest'})


    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use('theprimeagen/harpoon')
    use('theprimeagen/vim-be-good')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-\]],
            hide_numbers = true,
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = "curved",
                background = "Normal",
                direction = "horizontal"
            }
        })
    end }

    -- use ('42wim/vim-shfmt')

end)
