vim.api.nvim_create_autocmd("FileType", {
	pattern = { "prolog_ls" },
	callback = function()
		vim.lsp.start({
			name = "prolog_ls",
			cmd = {
				"swipl",
				"-g",
				"use_module(library(lsp_server)).",
				"-g",
				"lsp_server:main",
				"-t",
				"halt",
				"--",
				"stdio",
			},
		})
	end,
})
