vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Key mappings for :q and :q!
vim.keymap.set('n', '<Leader><Space>', ':q<CR>', { noremap = true, silent = true, desc = 'Quit with <Leader> + <Escape> ' })
vim.keymap.set('n', '<Leader><Escape>', ':q!<CR>', { noremap = true, silent = true, desc = 'Force quit with <Leader> + q' })

-- Window management
local opts = { noremap = true, silent = true }

-- Window split
vim.api.nvim_set_keymap('n', '<Leader>ws', '<C-w>s', opts) -- Split window horizontally
vim.api.nvim_set_keymap('n', '<Leader>wv', '<C-w>v', opts) -- Split window vertically

-- Window navigation
vim.api.nvim_set_keymap('n', '<Leader>ww', '<C-w>w', opts) -- Move to the next window
vim.api.nvim_set_keymap('n', '<Leader>wh', '<C-w>h', opts) -- Move to the left window
vim.api.nvim_set_keymap('n', '<Leader>wj', '<C-w>j', opts) -- Move to the bottom window
vim.api.nvim_set_keymap('n', '<Leader>wk', '<C-w>k', opts) -- Move to the top window
vim.api.nvim_set_keymap('n', '<Leader>wl', '<C-w>l', opts) -- Move to the right window

-- Window resizing
vim.api.nvim_set_keymap('n', '<Leader>w-', '24<C-w><', opts) -- Decrease width
vim.api.nvim_set_keymap('n', '<Leader>w+', '24<C-w>>', opts) -- Increase width
vim.api.nvim_set_keymap('n', '<Leader>w+', '24<C-w>+', opts) -- Increase height
vim.api.nvim_set_keymap('n', '<Leader>w-', '24<C-w>-', opts) -- Decrease height

-- Window close
vim.api.nvim_set_keymap('n', '<Leader>wc', '<C-w>c', opts) -- Close the current window
vim.api.nvim_set_keymap('n', '<Leader>wo', '<C-w>o', opts) -- Close other windows (only keep current)

-- Window equalize
vim.api.nvim_set_keymap('n', '<Leader>w=', '<C-w>=', opts) -- Make all windows equal size

-- Spectre keymaps Search/Replace
vim.keymap.set('n', '<leader>S', function() require('spectre').toggle() end, { desc = "Toggle Spectre" })
-- Search current word
vim.keymap.set('n', '<leader>sw', function() require('spectre').open_visual({select_word=true}) end, { desc = "Search current word" })
-- Search on current file
vim.keymap.set('n', '<leader>sf', function() require('spectre').open_file_search({select_word=true}) end, { desc = "Search on current file" })
