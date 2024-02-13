return {
  'matbme/JABS.nvim',
  config = function()
    require('jabs').setup {}
    vim.keymap.set('n', '<leader>bs', ':JABSOpen<CR>', { desc = 'JABS [B]uffer [S]witcher' })
  end,
}
