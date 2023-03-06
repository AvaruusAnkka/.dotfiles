local set = vim.keymap.set -- Set keymap

vim.g.mapleader = ' ' -- Set leader key to space

set('n', '<leader>r', ':luafile ~/.dotfiles/nvim/init.lua<CR>') -- Reload config

-- Clear search highlighting
set('n', '<leader><space>', ':noh<CR>')

set('n', '<leader>p', ':Prettier<CR>') -- Prettier

-- Tab managing
set('n', '<Tab>', ':bnext<CR>')
set('n', '<S-Tab>', ':bprevious<CR>')
set('n', '<leader>d', ':bdelete<CR>')

-- Telescope
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})
