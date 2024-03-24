vim.g.undotree_SplitWidth = 40
vim.g.undotree_DiffpanelHeight = 20
vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_ShortIndicators = 1
vim.g.undotree_HelpLine = 0

vim.keymap.set("n", "<Leader>u", function()
        vim.cmd.UndotreeToggle()
end)


-- vim.keymap.set("n", "<Leader>J", vim.lsp.buf.hover, bufopts)
