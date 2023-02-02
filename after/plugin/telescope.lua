local builtin = require("telescope.builtin")

vim.keymap.set("n", "<Leader>f", builtin.find_files)
vim.keymap.set("n", "<Leader>F", builtin.git_files)
vim.keymap.set("n", "<Leader>g", builtin.live_grep)
vim.keymap.set("n", "<Leader>b", builtin.buffers)
