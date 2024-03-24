-- Only required if you have packer configured as `opt`.
vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)

    -- Packer can manage itself.
    use "wbthomason/packer.nvim"

	-- Telescope finder.
    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim"
    }

	-- LSP.
	use {
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path"
    }

    -- Multi cursor.
    use {
        "mg979/vim-visual-multi",
        branch = "master"
    }

    -- Local config.
    use "MunifTanjim/exrc.nvim"

    -- Startup time optimizer.
    use "lewis6991/impatient.nvim"

    -- TODO: configure to show info manually.
    -- use "ray-x/lsp_signature.nvim"

    -- Navigation over symbols.
    -- use "stevearc/aerial.nvim"

    -- GPT.
    -- use {
    --     "jackMort/ChatGPT.nvim",
    --
    --     requires = {
    --         "MunifTanjim/nui.nvim",
    --         "nvim-lua/plenary.nvim",
    --         "nvim-telescope/telescope.nvim"
    --     }
    -- }

    -- Translator.
    use "potamides/pantran.nvim"

    -- ASCII diagrams.
    use "jbyuki/venn.nvim"

    -- Auto-mkdir utility.
    use "jghauser/mkdir.nvim"

    -- Fast R&D.
    -- use {
    --     "m-demare/attempt.nvim",
    --     requires = "nvim-lua/plenary.nvim"
    -- }

    -- Better comments.
    use "numToStr/Comment.nvim"

    -- Better motions.
    -- use {
    --     "phaazon/hop.nvim",
    --     branch = "v2"
    -- }

    -- TODO: need config.
    -- use "folke/which-key.nvim"

    -- Better terminal.
    use {
        "akinsho/toggleterm.nvim",
        tag = '*'
    }

    -- Vim-like motions in terminal.
    use {
        "chomosuke/term-edit.nvim",
        tag = "v1.*"
    }

    -- Better command line.
    use "gelguy/wilder.nvim"

    -- GDB inside nvim.
    use "sakhnik/nvim-gdb"

    -- Ochko.
    use {
        'alanfortlink/blackjack.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }

    -- Undotree.
    use "mbbill/undotree"

end)
