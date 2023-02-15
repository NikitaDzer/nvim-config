require("exrc").setup({
        files = {
                ".exrc.lua",
                ".exrc",
        },
})

vim.cmd [[ doautocmd User ExrcSource() ]]
