-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], { desc = "Go next tab" })
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], { desc = "Go prev tab" })
map("n", "tt", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, { desc = "Explorer NeoTree (cwd)" })
