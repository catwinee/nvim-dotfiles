local lsp_list = {
  "lua_ls",
  "clangd",
  "html",
  "pyright",
  "asm_lsp",
  "rust_analyzer",
  "jdtls",
}

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = lsp_list,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      for _, lsp in ipairs(lsp_list) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
          -- on_attach = on_attach,
        })
      end
 
      vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    end,
  },
}
