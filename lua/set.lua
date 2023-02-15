vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = true

-- Options for Undo Tree.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.updatetime = 100
vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- Support for system clipboard.
vim.opt.clipboard = "unnamedplus"

vim.cmd.colorscheme("hemisu")
