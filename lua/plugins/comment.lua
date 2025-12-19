return {
  { "nvim-mini/mini.comment", enabled = false },
  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    keys = {
      { "gcc", mode = "n", desc = "Comment line" },
      { "gbc", mode = "n", desc = "Comment block" },
      { "gc", mode = "v", desc = "Comment selection (line)" },
      { "gb", mode = "v", desc = "Comment selection (block)" },
    },
    config = function()
      -- Kiểm tra xem plugin có tồn tại không để tránh lỗi "nil"
      local status_ok, comment = pcall(require, "Comment")
      if not status_ok then
        return
      end

      local ft = require("Comment.ft")
      local tsc_integration = require("ts_context_commentstring.integrations.comment_nvim")

      -- Cấu hình RIÊNG cho PHP: { line_comment, block_comment }
      -- gcc sẽ lấy cái đầu tiên (//), gbc sẽ lấy cái thứ hai (/* */)
      ft.set("php", { "// %s", "/* %s */" })

      comment.setup({
        -- Tích hợp Treesitter để nhận diện context (ví dụ trong file PHP có lẫn HTML)
        pre_hook = tsc_integration.create_pre_hook(),

        -- Các phím tắt mặc định
        toggler = {
          line = "gcc",
          block = "gbc",
        },
        pleader = {
          line = "gc",
          block = "gb",
        },
      })
    end,
  },
}
