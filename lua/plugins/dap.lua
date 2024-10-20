return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    -- dap.liseners.before.attach.dapui_config = function()
    --   dapui.open()
    -- end
    --
    -- dap.liseners.before.launch.dapui_config = function()
    --   dapui.open()
    -- end
    --
    -- dap.liseners.before.event_terminated.dapui_config = function()
    --   dapui.open()
    -- end
    --
    -- dap.liseners.before.event_exited.dapui_config = function()
    --   dapui.open()
    -- end

    vim.api.nvim_set_hl(0, "red", { fg = "#ff0000" })
    vim.api.nvim_set_hl(0, "blue", { fg = "#3d59a1" })
    vim.api.nvim_set_hl(0, "green", { fg = "#9ece6a" })

    vim.api.nvim_set_hl(0, "black", { fg = "#000000" })
    vim.api.nvim_set_hl(0, "white", { fg = "#ffffff" })

    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "red", linehl = "", numhl = "red" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "blue", linehl = "", numhl = "blue" })

    vim.keymap.set("n", "<Leader>dp", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
    vim.keymap.set("n", "<Leader>dr", dap.run, {})
  end,
}
