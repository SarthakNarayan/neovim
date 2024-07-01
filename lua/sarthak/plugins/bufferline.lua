-- nice tab view
return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } }, -- no tabs over nvim-tree
    },
  },
}
