-- Set Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable previous default behavior with spacebar
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Prevent keymaps from being redefined
local opts = { noremap = true }

-- Save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Save file without formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- Quit file
vim.keymap.set('n', '<leader>q', '<cmd> q <CR>', opts)

-- delete char without saving to register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize buffers with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts)

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- Split navigation
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts) 
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts) 
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts) 
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts) 

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>tp', ':tabpw<CR>', opts)

-- Toggle Line Wrap
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in visual mode after indent
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dp', opts)

-- Diagnostic Keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic window' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
