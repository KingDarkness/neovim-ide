return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      blade = { "blade_formatter" },
    },
    formatters = {
      ["php-cs-fixer"] = {
        -- Thêm flag này để Mason/Conform không tạo file .cache nữa
        prepend_args = { "--using-cache=no" },
      },
    },
  },
}
