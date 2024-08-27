return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          themable = true,
          separator_style = "slope",
        },
      })
      vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>")
      vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<leader>>", ":BufferLineMoveNext<CR>")
      vim.keymap.set("n", "<leader><", ":BufferLineMovePrev<CR>")
      vim.keymap.set("n", "X", ":bdelete<CR>")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("nvim-tree").setup({
        view = { width = 20 },
      })
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.keymap.set("n", "<leader>tr", ":NvimTreeToggle<CR>")
    end,
  },
}
