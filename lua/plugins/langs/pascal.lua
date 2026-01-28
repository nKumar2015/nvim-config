vim.api.nvim_create_autocmd("FileType", {
	pattern = { "pascal", "delphi" },
	callback = function()
		vim.lsp.start({
			name = "pasls",
			cmd = { "pascal-language-server" },
			settings = {
				pascal = {
					includePath = {
						"/usr/lib/fpc/src", -- Important: path to FPC sources on Arch
						"/usr/lib/fpc/$FPCVERSION/src",
					},
					formatter = {
						indent = 2, -- Optional: Adjust indentation preference
					},
				},
			},
		})
	end,
})
