local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
map('i', 'jj', '<ESC>:w<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>W', ':wq<CR>')
map('n', '<leader>Q', ':q!<CR>')
map('n', '<leader>h', ':set hlsearch!<CR>')
map('n', '<Tab>', ':bn<CR>')
map('n', '<S-Tab>', ':bp<CR>')
map('n', '<leader>x', ':bw<CR>')
map('n', 'j', 'gj')
map('n', 'k', 'gk')
map('n', '<Down>', 'gj')
map('n', '<Up>', 'gk')
map('i', '<Down>', '<C-o>gj')
map('i', '<Up>', '<C-o>gk')
