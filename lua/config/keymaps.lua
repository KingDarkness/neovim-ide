-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
-- local Util = require("lazyvim.util")

local wk = require("which-key")
-- Copy
wk.add({
  { "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], desc = "Go next tab" },
  { "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], desc = "Go prev tab" },
  {
    "tt",
    ':lua require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })<CR>',
    desc = "Explorer NeoTree (cwd)",
  },
  { "<leader>y", group = "Copy" },
  { "<leader>ya", [[<Cmd> %y+<CR>]], desc = "Copy All" },
})

vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
