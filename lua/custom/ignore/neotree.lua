return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      -- add hotkey to toggle neo_tree
      auto_open = false,
      auto_close = true,
      open_on_tab = false,
      hijack_cursor = false,
      update_to_buf_dir = {
        enable = true,
        auto_open = true,
      },
      lsp_diagnostics = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      system_open = {
        cmd = nil,
        args = {},
      },
      filters = {
        dotfiles = true,
        custom = {},
      },
    }
    vim.keymap.set('n', '<leader>ff', ':Neotree focus<CR>', { desc = '[F]ilesystem [F]ocus' })
    vim.keymap.set('n', '<leader>ft', ':Neotree toggle<CR>', { desc = '[F]ilesystem [T]oggle' })
  end,
}
