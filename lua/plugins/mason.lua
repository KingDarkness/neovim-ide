return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "intelephense",
        "lua-language-server",
        "php-cs-fixer",
        "phpactor",
        "prettierd",
        "python-lsp-server",
        "shfmt",
        "stylua",
        "typescript-language-server",
        "json-lsp",
      },
    },
  },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
