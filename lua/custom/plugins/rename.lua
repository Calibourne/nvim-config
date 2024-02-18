return {
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup()
    vim.keymap.set('v', '<leader>rn', '<cmd>lua require("inc_rename").rename()<CR>', { desc = "Rename Variable" })
    vim.keymap.set('n', '<leader>rn', function()
      return ":IncRename " .. vim.fn.expand("<cword>")
    end, { expr = true })
  end,
}
