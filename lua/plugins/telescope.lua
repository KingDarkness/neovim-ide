return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>p",
        function() require("telescope.builtin").find_files({ hidden = true }) end,
        desc = "Find File",
      },
      {
        "<leader>r",
        function()
          require("telescope.builtin").treesitter()
        end,
        desc = "Find methods, variable...",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_config = {
          prompt_position = "bottom",
        },
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = { ".git" },
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = {},
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
      },
      pickers = {
        find_files = {
          theme = "ivy",
        },
        treesitter = {
          theme = "ivy",
        },
        buffers = {
          theme = "ivy",
        },
      },
    },
  },
}
