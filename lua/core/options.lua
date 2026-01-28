-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Number of spaces a <Tab> counts for
vim.opt.tabstop = 4

-- Number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 4

-- Number of spaces for <Tab> in insert mode
vim.opt.softtabstop = 3

-- Enable relative line numbers
vim.wo.number = true
vim.o.relativenumber = true

-- Sync OS and Vim clipboards
vim.o.clipboard = "unnamedplus"

-- Allow lines longer than window width
vim.o.wrap = false

-- Companion to wrap, prevents word splitting
vim.o.linebreak = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Copy indent from current line when creating a new one
vim.o.autoindent = true

-- Case insensitive search unless \C or capitall in search
vim.o.ignorecase = true

-- Smart Case
vim.o.smartcase = true

-- Prevent "wobble" from signs appearing/disappearing
vim.o.signcolumn = "yes"
