-- ##########################################################################################
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opts = { noremap = true, silent = true } -- silent = true means you won't see the command which ran

-- Shorten function name
local keymap = vim.keymap.set

-- ##########################################################################################
-- remap the leader key to ,
-- Nop means no remap
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- ##########################################################################################
-- Normal Mode --
-- Better window navigation
-- Use Ctrl + h,j,k,l for navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Go to end and beginning of the line using H and L.
-- S stands for Shift
keymap("n", "<S-h>", "^", opts)
keymap("n", "<S-l>", "$", opts)

-- Quicker navigation
-- K is equivalent to 10k
keymap("n", "<S-k>", "10kzz", opts)
keymap("n", "<S-j>", "10jzz", opts)

-- Remapping G to come to centre
keymap("n", "<S-g>", "Gzz", opts)

-- Centre window while searching
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- move between lines if the lines are wrapped
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- window splits
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split the window vertically"}) 
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split the window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make the splits equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close the current split" })

-- tab management
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- remove search highlight
keymap("n", "<leader>nh", ":nohl<CR>", opts) -- remove search hightlight

-- Copying to the system clipboard, one option is to set clipboard = unnamedplus
-- But I don't want to litter my system clipboard with this so I have custom key mappings
-- https://www.reddit.com/r/neovim/comments/jzlbsw/how_can_i_copy_text_from_nvim_to_system_clipboard/
-- https://www.reddit.com/r/neovim/comments/3fricd/easiest_way_to_copy_from_neovim_to_system/
-- Also I use CMD + V to paste from clipboard, I am doing this since for some reason I cannot copy using CMD + C
-- This is also shared with vim clipboard
keymap("n", "<leader>y", '"+yy', opts)

-- ##########################################################################################
-- Insert Mode --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "JK", "<ESC>", opts)

-- ##########################################################################################
-- Visual --
-- Stay in indent mode. Holds the indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move quickly in visual mode
keymap("v", "<S-k>", "10k", opts)
keymap("v", "<S-j>", "10j", opts)

-- move to the end of the line in visual mode
-- without these settings it goes to the end of the line
keymap("v", "<S-l>", "$", opts)
keymap("v", "<S-h>", "^", opts)

-- remap esc in visual mode, you can either use this or press v 1 or 2 times depending on the visual or visual block mode
keymap("v", "<leader>jk", "<ESC>", opts)

-- copying to clipboard while in visual mode
keymap("v", "<leader>y", '"+y', opts)

-- ##########################################################################################
-- Command Mode --
-- Escape from command mode using jk
-- In command mode mappings to esc run the command for some odd historical vi compatibility reason.
-- We use the alternate method of existing which is Ctrl-C
keymap("c", "jk", "<C-c>", opts)
