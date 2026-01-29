return {
  {
    "mason-org/mason.nvim",
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
        "blade-formatter",
        "vue-language-server",
      },
    },
  },
  { "mason-org/mason-lspconfig.nvim" },
}
