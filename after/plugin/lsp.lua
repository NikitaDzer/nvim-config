-- The function maps following keys.
local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	local opts    = { noremap = true, silent = true }

	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "<space>r", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<space>d", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "<space>a", vim.lsp.buf.code_action, bufopts)

    client.server_capabilities.semanticTokensProvider = nil 
end

-- Use LSP server.
local servers = { "clangd" }
for _, lsp in pairs(servers) do
	require("lspconfig")[lsp].setup {
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 100,
		}
	}
end

-- Only underline diagnostics.
vim.diagnostic.config {
	virtual_text = false,
	signs = false,
	underline = true,
}
