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
    },
  },
}
