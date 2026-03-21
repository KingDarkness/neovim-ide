return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          -- Thêm dòng này để ép nó nhận diện đúng root dự án
          root_dir = require("lspconfig").util.root_pattern("composer.json", ".git", "index.php"),
          settings = {
            intelephense = {
              environment = {
                phpVersion = "8.2.0", -- Viết đầy đủ 3 chữ số
              },
              -- Tắt telemetry để giảm tải
              telemetry = { enabled = false },
            },
          },
        },
        phpactor = {
          filetypes = { "php", "blade", "php_only" },
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
          on_attach = function(client, bufnr)
            client.server_capabilities.completionProvider = false
          end,
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
