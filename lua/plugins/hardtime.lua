return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("hardtime").setup({
      max_count = 20,
      disable_mouse = false,
    })
  end,
}
