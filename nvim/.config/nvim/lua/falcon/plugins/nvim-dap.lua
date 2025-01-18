return {
  "mfussenegger/nvim-dap",
  dependencies = {
    -- ui plugins to make debugging simplier
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    -- gain access to the dap plugin and its functions
    local dap = require("dap")
    -- gain access to the dap ui plugin and its functions
    local dapui = require("dapui")
    -- setup dap ui with default config
    dapui.setup({})

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    -- Set vim motion for <Space> + d + t to toggle a breakpoint at the line where the cursor is currently on
    vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, { desc = "[D]ebug [T]oggle Breakpoint" })
    -- Set vim motion for <Space> + d + s to start the debugger & launch debug ui
    vim.keymap.set('n', '<leader>ds', dap.continue, { desc = "[D]ebug [S]tart" })
    -- Set vim motion for <Space> + d + c to close debugger ui
    vim.keymap.set('n', '<leader>dc', dapui.close, { desc = "[D]ebug [C]lose" })
  end
}
