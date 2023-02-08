-- Only required if you have packer configured as `opt`.
vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)

        -- Packer can manage itself.
        use "wbthomason/packer.nvim"

	-- Telescope.
        use {
                "nvim-telescope/telescope.nvim",
	        tag = "0.1.1",
                requires = { {"nvim-lua/plenary.nvim"} }
        }

        -- Fuzzy finder.
        use {
                "junegunn/fzf",
                run = { ":call fzf#install()" }
        }
        use "junegunn/fzf.vim"

	-- Undo tree.
        use "mbbill/undotree"

	-- LSP.
	use "neovim/nvim-lspconfig"
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"

        -- Multi cursor.
        use {
                "mg979/vim-visual-multi",
                branch = "master"
        }

end)
