local lsp_list = {
	"lua_ls",
	"clangd",
	"snyk_ls",
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
      -- local on_attach = require("cmp_nvim_lsp").default_on_attach()

			local lspconfig = require("lspconfig")
			for _, lsp in ipairs(lsp_list) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
					on_attach = on_attach,
				})
			end
			-- lspconfig.lua_ls.setup({
			-- 	capabilities = capabilities,
			-- 	on_attach = on_attach,
			-- })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		end,
	},
}
