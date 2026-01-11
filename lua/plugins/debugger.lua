return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")

      require("dapui").setup()
      require("dap-go").setup()

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

      -- RUST --
      dap.adapters.codelldb = {
        type = "executable",
        command = "codelldb",
      }

      dap.configurations.rust = {
        {
          name = "Launch file",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
        },
      }
      -- RUST --

      vim.keymap.set("n", "<Leader>du", ":lua require('dapui').toggle()<CR>", { desc = "DAP: Toggle ui" })
      vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "DAP: Create breakpoint" })
      vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "DAP: Continue" })
      vim.keymap.set("n", "<Leader>dI", dap.step_into, { desc = "DAP: Step Into" })
      vim.keymap.set("n", "<Leader>dO", dap.step_over, { desc = "DAP: Step Over" })
      vim.keymap.set("n", "<Leader>dU", dap.step_out, { desc = "DAP: Step Out" })
      vim.keymap.set("n", "<Leader>dt", dap.terminate, { desc = "DAP: Terminate" })
      vim.keymap.set("n", "<Leader>dr", ":lua require('dapui').open({reset = true})<CR>", { desc = "DAT: Reset" })

      vim.fn.sign_define(
        "DapBreakpoint",
        { text = "⏺", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
      )
    end,
  },
}
