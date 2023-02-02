vim.keymap.set("n", "<Leader>u", function()
        vim.cmd.UndotreeToggle()
        vim.cmd("wincmd w")
end)
