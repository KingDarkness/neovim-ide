return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 1. Cấu hình Volar (Vue Language Server)
        volar = {
          init_options = {
            vue = {
              -- TẮT Hybrid Mode là bắt buộc đối với Vue 2 để tránh lỗi cancellationPipeName
              hybridMode = false,
            },
          },
        },
      },
    },
  },
}
