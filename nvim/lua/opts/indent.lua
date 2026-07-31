vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.lua", "*.js", "*.ts", "*.svelte" },
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
