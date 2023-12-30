return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "query",
        "regex",
        "vim",
        "javascript",
        "html",
        "css",
        "bash",
        "lua",
        "json",
        "python",
        "dart",
        "dockerfile",
        "php",
        "toml",
        "typescript",
        "vue",
        "yaml",
        "tsx",
        "markdown",
        "markdown_inline",
      },
      languages = {
        vue = {
          __default = "// %s",
          comment = "// %s",
          css_style = "/* %s */",
          html = "<!-- %s -->",
        },
      },
    },
  },
}
