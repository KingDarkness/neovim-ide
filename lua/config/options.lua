-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_php_lsp = "intelephense"
-- Cho phép Neovim chạy file Local Config .nvim.lua
-- vim.o.exrc = true

local opt = vim.opt

opt.ignorecase = false
