local pantran = require("pantran")

pantran.setup({
  default_engine = "yandex",

  engines = {
    yandex = {
      default_source = "auto",
      default_target = "ru",

      fallback = {
        default_source = "auto",
        default_target = "ru"
      }
    },
  }
})

local opts = { noremap = true, silent = true, expr = true }
vim.keymap.set("n", "<Leader>tr", pantran.motion_translate, opts)
vim.keymap.set("x", "<Leader>tr", pantran.motion_translate, opts)
