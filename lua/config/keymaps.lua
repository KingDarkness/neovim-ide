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

  {
    mode = { "v" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move selection down" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move selection up" },
    { "<C-S-DOWN>", ":m '>+1<CR>gv=gv", desc = "Move selection down" },
    { "<C-S-UP>", ":m '<-2<CR>gv=gv", desc = "Move selection up" },
  },

  -- Cấu hình cho Normal Mode (n)
  {
    mode = { "n" },
    { "<C-S-DOWN>", ":m .+1<CR>==", desc = "Move line down" },
    { "<C-S-UP>", ":m .-2<CR>==", desc = "Move line up" },
  },

  -- Cấu hình cho Insert Mode (i)
  {
    mode = { "i" },
    { "<C-S-DOWN>", "<Esc>:m .+1<CR>==gi", desc = "Move line down" },
    { "<C-S-UP>", "<Esc>:m .-2<CR>==gi", desc = "Move line up" },
  },
})

vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
