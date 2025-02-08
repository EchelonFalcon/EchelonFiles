return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<Leader>ee", ":Neotree filesystem reveal left<CR>", { desc = "Open Neotree" })
    vim.keymap.set("n", "<leader>ec", ":Neotree filesystem close<CR>", { desc = "Close Neotree" })

    require('neo-tree').setup({
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "󰜌",
      },
      window = {
        width = 33,
      },
    })
  end,
}
