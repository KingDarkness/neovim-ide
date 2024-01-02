return {
  { dir = "/home/kingdarkness/.config/nvim/plugins/neotest-phpunit" },
  {
    "nvim-neotest/neotest",
    keys = {
      {
        "<leader>tc",
        function()
          local name = vim.fn.input("Enter docker container name: ")
          vim.g.docker_container_name = name
        end,
        desc = "Set container name",
      },
    },
    opts = {
      adapters = {
        ["neotest-phpunit"] = {
          phpunit_cmd = function()
            return {
              "docker",
              "exec",
              vim.g.docker_container_name,
              "php",
              "vendor/bin/phpunit",
            }
          end,
        },
      },
    },
  },
}
