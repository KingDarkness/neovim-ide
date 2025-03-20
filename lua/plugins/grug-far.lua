local utils = require("utils")

local function search_on_directory(opts)
  opts = opts or {}
  opts.paths = utils.get_absolute_forder_path()
  if opts.select_word then
    opts.search = vim.fn.expand("<cword>")
    require("grug-far").open({ prefills = opts, transient = true })
  else
    require("grug-far").with_visual_selection({ prefills = opts, transient = true })
  end
end

return {
  {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    opts = { headerMaxWidth = 80 },
    -- stylua: ignore
    keys = {
      { "<leader>F", function() require('grug-far').open({transient = true}) end, desc = "Search & Replace in Project", },
      { "<leader>fw", function() require('grug-far').open({ prefills = { search = vim.fn.expand("<cword>") }, transient = true }) end, desc = "Search & Replace current word in Project" },
      { "<leader>fD", function() search_on_directory() end, desc = "Search & Replace in current directory", mode = { "n", "v" } },
      { "<leader>fd", function() search_on_directory({select_word = true}) end, desc = "Search & Replace current word in current directory" },
    },
  },
}
