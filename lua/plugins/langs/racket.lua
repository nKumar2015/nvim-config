local function get_racket_root()
	-- 1. Try to find a standard project root (.git or info.rkt)
	local root = vim.fs.find({ ".git", "info.rkt" }, {
		path = vim.api.nvim_buf_get_name(0),
		upward = true,
	})[1]

	-- 2. If found, return the folder containing it
	if root then
		return vim.fs.dirname(root)
	end

	-- 3. FALLBACK: If no project root, use the file's own directory
	-- This is the key fix for "test/test.rkt" single files
	return vim.fs.dirname(vim.api.nvim_buf_get_name(0))
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "racket", "scheme" },
	callback = function()
		vim.lsp.start({
			name = "racket_langserver",
			cmd = { "racket", "--lib", "racket-langserver" },
			root_dir = get_racket_root(),

			-- Optional: Explicitly enable single file mode
			single_file_support = true,
		})
	end,
})
