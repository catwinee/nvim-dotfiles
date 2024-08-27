return {
	"simrat39/symbols-outline.nvim",
	config = function()
		require("symbols-outline").setup({
      width = 20,
      auto_preview = true,
      auto_close = true
    })
    vim.keymap.set('n', '<leader>o', ':SymbolsOutline<CR>')
	end,
}
