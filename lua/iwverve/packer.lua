---@diagnostic disable undefined-global
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Theme
    use {
        'maxmx03/dracula.nvim',
        as = 'dracula',
    }
    use { 'rebelot/kanagawa.nvim',
        config = function()
            require('kanagawa').setup({
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
            })
        end,
    }
    use { 
        'verve-theme',
    }

    -- Lush
    use {
        'rktjmp/lush.nvim',
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- -- Harpoon
    -- use { 'nvim-lua/plenary.nvim' }
    -- use { 'ThePrimeagen/harpoon' }

    -- Lsp Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
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

    -- Which key
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }

    -- Gitsigns
    use {
        "lewis6991/gitsigns.nvim",
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
        },
    }

    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Indent Blankline
    use "lukas-reineke/indent-blankline.nvim"

    -- Nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            "nvim-tree/nvim-web-devicons"
        },
    }

    -- ufo
    use {
        'kevinhwang91/nvim-ufo',
        requires = 'kevinhwang91/promise-async',
    }
end)
