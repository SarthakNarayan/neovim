-- nice tab view
return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			show_buffer_close_icons = false,
			show_close_icon = false,
			mode = "tabs",
			offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } }, -- no tabs over nvim-tree
		},
	},
}
