return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = 'vertical',
      size = 30,
		})
		vim.keymap.set("n", "<leader>te", ":ToggleTerm<CR>")
	end,
}
