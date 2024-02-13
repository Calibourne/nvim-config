return {
  "kdheepak/lazygit.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>')
  end,
}
