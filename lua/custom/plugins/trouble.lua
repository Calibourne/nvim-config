return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    local wk = require("which-key")
    wk.register({
      ["<leader>xx"] = { "Trouble", "Toggle Trouble" },
      ["<leader>xw"] = { "Trouble", "Toggle Trouble Workspace Diagnostics" },
      ["<leader>xd"] = { "Trouble", "Toggle Trouble Document Diagnostics" },
      ["<leader>xq"] = { "Trouble", "Toggle Trouble Quickfix" },
      ["<leader>xl"] = { "Trouble", "Toggle Trouble Loclist" },
      ["gR"] = { "Trouble", "Toggle Trouble LSP References" },
    }, { prefix = "<leader>" })
    vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = "Toggle Trouble" })
    vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
      { desc = "Toggle Trouble Workspace Diagnostics" })
    vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
      { desc = "Toggle Trouble Document Diagnostics" })
    vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end,
      { desc = "Toggle Trouble Quickfix" })
    vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end,
      { desc = "Toggle Trouble Loclist" })
    vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end,
      { desc = "Toggle Trouble LSP References" })
  end,
}
