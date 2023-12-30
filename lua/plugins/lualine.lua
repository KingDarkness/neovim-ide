local function lsp_info()
  local get_lsp_client = function(msg)
    msg = msg or "No LSP"
    local clients = vim.lsp.buf_get_clients()
    if next(clients) == nil then
      return msg
    end

    local client_names = ""
    for _, client in pairs(clients) do
      if string.len(client_names) < 1 then
        client_names = client_names .. client.name
      else
        client_names = client_names .. ", " .. client.name
      end
    end
    return string.len(client_names) > 0 and client_names or msg
  end

  local icon = "  "
  local active_lsp = get_lsp_client()

  if active_lsp == "No Active Lsp" then
    icon = ""
    active_lsp = ""
  end

  return icon .. active_lsp .. " "
end

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, lsp_info)
    end,
  },
}
