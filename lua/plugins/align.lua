return {
  {
    "junegunn/vim-easy-align",
    event = "BufReadPost",
    config = function()
      vim.api.nvim_exec2(
        [[
                  xmap <leader>a <Plug>(EasyAlign)
                  nmap <leader>a <Plug>(EasyAlign)
                ]],
        {}
      )
    end,
  },
}
