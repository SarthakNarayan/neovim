-- bootstrap lazy if it isn't already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- setup contains the path that the lazy plugin manager will monitor when new plugins are added 
-- In our case its the plugins folder
require("lazy").setup("sarthak.plugins", {
  change_detection = {
    notify = false,
  }
}) 
