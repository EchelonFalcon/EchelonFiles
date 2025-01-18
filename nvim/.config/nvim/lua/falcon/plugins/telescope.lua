return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      local builtin = require('telescope.builtin')
      -- set a vim motion tp <space> + f + f to search for files by their names
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
      -- set a vim motion tp <space> + f + g to search files based on text inside
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[L]ive [G]rep' })
      -- set a vim motion tp <space> + f + b to search Open Buffers
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind Exsiting [B]uffers' })
      -- set a vim motion tp <space> + f + h
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[H]elp [T]ags' })
      -- set a vim motion tp <space> + f + d to search for code diagnostics
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
      -- set a vim motion tp <space> + f + r to resume previous search
      vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = "[F]inder [R]esume" })
      -- set a vim motion tp <space> + f + . to search for Recent Files
      vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = "[F]ind Recent Files ('.' for repeat)" })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- get access to telescope navigation
      local actions = require("telescope.actions")

      require("telescope").setup({
        -- use ui-select dropdown as our ui
        extensions = {
          ["ui-select"] = {
            require('telescope.themes').get_dropdown {}
          }
        },
        -- set keymappings to navigate through items in telescope
        mappings = {
          i = {
            -- use Ctrl + n to go to the next option
            ["<C-n>"] = actions.cycle_history_next,
            -- use Ctrl + p to go to the previous option
            ["<C-p>"] = actions.cycle_history_prev,
          }
        },
        -- load the ui-select extension
        require("telescope").load_extension("ui-select")
      })
    end
  }
}
