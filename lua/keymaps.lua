vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.api.nvim_set_keymap('n', '<Tab>', '>>', { noremap = true, silent = true })

-- Make ALT + jk move lines up / down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<CR>', 'i<CR><Esc>', { noremap = true, silent = true })

-- Open netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- TODO(calco): For some reason this doesn't work ???? Commenting stuff
vim.keymap.set('n', '<C-_>', 'gcc')
vim.keymap.set('v', '<C-_>', 'gc')

-- NOTE(calco): More funky bits. Idk if this is right.
-- Should  be replace if you use nvim-cmp-lsp-signature-help or whatever it is called
vim.keymap.set('n', '<leader>k', function()
  vim.lsp.buf.hover()
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>K', function()
  vim.lsp.buf.signature_help()
end, { noremap = true, silent = true })

-- Quickfixc stuff
vim.keymap.set('n', ']q', '<cmd>cnext<CR>zz', { noremap = true, silent = true })
vim.keymap.set('n', '[q', '<cmd>cprev<CR>zz', { noremap = true, silent = true })
vim.keymap.set('n', '[Q', '<cmd>cnext 1<CR>zz', { noremap = true, silent = true })
vim.keymap.set('n', ']Q', '<cmd>clast<CR>zz', { noremap = true, silent = true })
