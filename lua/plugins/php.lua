return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        phpactor = {
          filetypes = { "php", "blade", "php_only" },
          init_options = {
            -- ["language_server_completion.trim_leading_dollar"] = true,
          },
        },
      },
    },
  },
  {
    -- Thêm plugin chuyên biệt cho Blade
    "jwalton512/vim-blade",
    ft = "blade",
  },
}
