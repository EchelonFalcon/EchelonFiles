local keymap = vim.keymap

-- Setting leader keymapping
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Select All
keymap.set('n', '<C-a>', '', { desc = "Select All Content" })

-- Exit Insert Mode
keymap.set('i', 'qw', '<Esc>', { desc = "[E]xit [I]nsert [M]ode" })

-- Remove search highlighting after search
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Remove Search Highlight" })

-- Easly Split Window
keymap.set('n', '<leader>sv', '<C-w>v', { desc = "[S]plit Window [V]ertically" })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = "[S]plit Window [H]orizontally" })
keymap.set('n', '<leader>se', '<C-w>=', { desc = "[S]plit Window [E]qually" })
keymap.set('n', '<leader>sc', '<cmd>close<CR>', { desc = "{S]plit [C]lose" })

-- Exit Vims Terminal
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = "[E]xit [T]erminal [M]ode" })

