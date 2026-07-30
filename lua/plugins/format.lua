return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      blade = { "blade_formatter" },
      php = { "pint", "php_cs_fixer", stop_after_first = true },
    },
    formatters = {
      pint = {
        condition = function(self, ctx)
          -- Bỏ qua pint nếu file nằm trong thư mục packages/ 
          -- (lúc này conform sẽ tự động nhường quyền format cho php_cs_fixer)
          if string.match(ctx.filename, "/packages/") then
            return false
          end
          -- Chỉ dùng pint nếu tìm thấy vendor/bin/pint
          return vim.fs.find({ "vendor/bin/pint" }, { path = ctx.dirname, upward = true })[1] ~= nil
        end,
      },
      php_cs_fixer = {
        -- Thêm flag này để Mason/Conform không tạo file .cache nữa
        prepend_args = { "--using-cache=no" },
      },
    },
  },
}
