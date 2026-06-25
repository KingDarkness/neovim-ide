-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_php_lsp = "intelephense"
-- Cho phép Neovim chạy file Local Config .nvim.lua
vim.o.exrc = true

local opt = vim.opt

opt.ignorecase = false

-- Automatically start RPC server for mcp-neovim-server
local mcp_socket = "/tmp/nvim.sock"
if vim.fn.has("win32") == 0 then
  -- Clean up socket if left over from a previous crashed session, then start server
  if vim.fn.filereadable(mcp_socket) == 1 then
    os.remove(mcp_socket)
  end
  pcall(vim.fn.serverstart, mcp_socket)
end
