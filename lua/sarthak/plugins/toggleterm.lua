return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 80,
			open_mapping = [[<leader>tt]],
			shading_factor = 2,
			direction = "vertical",
			float_opts = {
				border = "curved",
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
	end,
}
