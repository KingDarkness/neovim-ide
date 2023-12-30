local utils = require("utils")

local function search_on_directory(opts)
  opts = opts or {}
  opts.path = utils.get_absolute_forder_path()
  if opts.select_word then
    opts.search_text = vim.fn.expand("<cword>")
  else
    opts.search_text = require("spectre.utils").get_visual_selection()
  end

  require("spectre").open(opts)
end

return {
  {
    "nvim-pack/nvim-spectre",
    build = false,
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
    -- stylua: ignore
    keys = {
      { "<leader>F", function() require("spectre").open_visual() end, desc = "Search & Replace in Project" },
      { "<leader>fw", function() require("spectre").open_visual({select_word=true}) end, desc = "Search & Replace current word in Project" },
      { "<leader>fD", function() search_on_directory() end, desc = "Search & Replace in current directory" },
      { "<leader>fd", function() search_on_directory({select_word = true}) end, desc = "Search & Replace current word in current directory" },
    },
  },
}
