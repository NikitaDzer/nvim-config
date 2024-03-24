vim.g.mapleader = ";"

vim.keymap.set("n", "o", "o<Esc>")
vim.keymap.set("n", "O", "O<Esc>")

-- Better lines moving.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Rename within current file.
vim.keymap.set("n", "<F9>",
    ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Remove trailing whitespaces.
vim.keymap.set("n", "<F10>",
    [[:%s/\s\+$//e<CR>:noh<CR>]],
{ silent = true })

-- Change buffer.
vim.keymap.set("n", "<Tab>", function()
    vim.cmd("bnext")
end)
vim.keymap.set("n", "<S-Tab>", function()
    vim.cmd("bprev")
end)
