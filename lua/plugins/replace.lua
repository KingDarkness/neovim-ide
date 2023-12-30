return {
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>R"] = {
          name = "Replace+",
          w = { [[:lua require("utils").normalReplace("all")<CR>]], "Current word in file" },
          l = { [[:lua require("utils").normalReplace("line")<CR>]], "Current word in line" },
          n = {
            [[:lua require("utils").normalReplace("here_next_lines")<CR>]],
            "Current word from pos to next ? lines",
          },
          e = {
            [[:lua require("utils").normalReplace("here_to_end")<CR>]],
            "Current word from pos to end of file",
          },
          c = {
            name = "With confirm",
            w = { [[:lua require("utils").normalReplace("all", "confirm")<CR>]], "Current word in file" },
            l = { [[:lua require("utils").normalReplace("line", "confirm")<CR>]], "Current word in line" },
            n = {
              [[:lua require("utils").normalReplace("here_next_lines", "confirm")<CR>]],
              "Current word from pos to next ? lines",
            },
            e = {
              [[:lua require("utils").normalReplace("here_to_end", "confirm")<CR>]],
              "Current word from pos to end of file",
            },
          },
        },
      },
    },
  },
}
