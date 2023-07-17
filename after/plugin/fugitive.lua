vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
