local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	mapping = {
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<C-c>"] = function()
			cmp.complete()
		end,
		["<Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		["<S-Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end,
	}, 

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" }, 
	}, {
		{ name = "buffer" },
	})
})

-- Disable autocomplete for C/C++ projects.
cmp.setup.filetype({ "c", "cc", "cpp", "c++", "h", "hpp" }, {
	completion = {
		autocomplete = false,
	}
})

-- Search within current file.
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" }
	}
})

