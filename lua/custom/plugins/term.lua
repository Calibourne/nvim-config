return {
  -- {
  --   'akinsho/toggleterm.nvim',
  --   version = "*",
  --   config = function()
  --     require("toggleterm").setup {}
  --     vim.keymap.set('n', '<C-i>', '<CMD>:ToggleTerm direction=float<CR>', { desc = "Toggle terminal" })
  --     vim.keymap.set('t', '<C-i>', '<C-\\><C-n>:ToggleTerm direction=float<CR>', { desc = "Toggle terminal" })
  --   end
  -- },
  -- {
  --   "https://git.sr.ht/~havi/telescope-toggleterm.nvim",
  --   event = "TermOpen",
  --   requires = {
  --     "akinsho/nvim-toggleterm.lua",
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-lua/popup.nvim",
  --     "nvim-lua/plenary.nvim",
  --   },
  --   config = function()
  --     require("telescope").load_extension "toggleterm"
  --   end,
  -- },
  {
    "numToStr/FTerm.nvim",
    config = function()
      require('FTerm').setup({
        dimensions = {
          height = 0.9,
          width = 0.9,
        },
      })

      -- Example keybindings
      vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
      vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    end,
  }
}
