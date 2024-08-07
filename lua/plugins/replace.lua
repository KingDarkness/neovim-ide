return {
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        {
          { "<leader>R", group = "Replace+" },
          { "<leader>Rc", group = "With confirm" },
          {
            "<leader>Rce",
            ':lua require("utils").normalReplace("here_to_end", "confirm")<CR>',
            desc = "Current word from pos to end of file",
          },
          {
            "<leader>Rcl",
            ':lua require("utils").normalReplace("line", "confirm")<CR>',
            desc = "Current word in line",
          },
          {
            "<leader>Rcn",
            ':lua require("utils").normalReplace("here_next_lines", "confirm")<CR>',
            desc = "Current word from pos to next ? lines",
          },
          { "<leader>Rcw", ':lua require("utils").normalReplace("all", "confirm")<CR>', desc = "Current word in file" },
          {
            "<leader>Re",
            ':lua require("utils").normalReplace("here_to_end")<CR>',
            desc = "Current word from pos to end of file",
          },
          { "<leader>Rl", ':lua require("utils").normalReplace("line")<CR>', desc = "Current word in line" },
          {
            "<leader>Rn",
            ':lua require("utils").normalReplace("here_next_lines")<CR>',
            desc = "Current word from pos to next ? lines",
          },
          { "<leader>Rw", ':lua require("utils").normalReplace("all")<CR>', desc = "Current word in file" },
        },
        {
          mode = { "v" },
          { "<leader>R", group = "Replace+" },
          { "<leader>Rc", group = "With confirm" },
          {
            "<leader>Rce",
            ':lua require("utils").visualReplace("here_to_end", "confirm")<CR>',
            desc = "Current word from pos to end of file",
          },
          {
            "<leader>Rcl",
            ':lua require("utils").visualReplace("line", "confirm")<CR>',
            desc = "Current word in line",
          },
          {
            "<leader>Rcn",
            ':lua require("utils").visualReplace("here_next_lines", "confirm")<CR>',
            desc = "Current word from pos to next ? lines",
          },
          { "<leader>Rcw", ':lua require("utils").visualReplace("all", "confirm")<CR>', desc = "Current word in file" },
          {
            "<leader>Re",
            ':lua require("utils").visualReplace("here_to_end")<CR>',
            desc = "Current word from pos to end of file",
          },
          { "<leader>Rl", ':lua require("utils").visualReplace("line")<CR>', desc = "Current word in line" },
          {
            "<leader>Rn",
            ':lua require("utils").visualReplace("here_next_lines")<CR>',
            desc = "Current word from pos to next ? lines",
          },
          { "<leader>Rw", ':lua require("utils").visualReplace("all")<CR>', desc = "Current word in file" },
        },
      },
    },
  },
}
