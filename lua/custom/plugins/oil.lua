return {
  {
    "refractalize/oil-git-status.nvim",

    dependencies = {
      "stevearc/oil.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    },

    config = true,
  },
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup {
        win_options = {
          signcolumn = "yes:1",
        },
      }
      vim.keymap.set('n', '<leader>o', '<cmd>Oil<cr>')
    end
  }
}
