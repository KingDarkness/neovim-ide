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
        "blade",
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
  {
    -- Add a Treesitter parser for Laravel Blade to provide Blade syntax highlighting.
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "blade",
        "php_only",
      })
    end,
    config = function(_, opts)
      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })
    end,
  },
}
