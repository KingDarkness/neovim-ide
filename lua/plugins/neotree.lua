return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = { filtered_items = { hide_hidden = false, hide_dotfiles = false, hide_gitignored = false } },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
      window = {
        mappings = {
          -- y: Copy CHỈ TÊN FILE (Filename) vào Clipboard
          ["y"] = {
            function(state)
              local node = state.tree:get_node()
              local filename = node.name -- Lấy tên file/thư mục
              vim.fn.setreg("+", filename, "c")
              vim.notify("Copied Filename: " .. filename, vim.log.levels.INFO, { title = "Neo-tree" })
            end,
            desc = "Copy Filename to System Clipboard",
          },
        },
      },
    },
  },
}
