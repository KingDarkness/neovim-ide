return {
  {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    keys = {
      {
        "<leader>p",
        LazyVim.pick("files", { root = false }),
        desc = "Find File",
      },
      {
        "<leader>r",
        function()
          require("fzf-lua").lsp_document_symbols()
        end,
        desc = "Find methods, variable...",
      },
    },
  },
}
