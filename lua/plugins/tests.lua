return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-phpunit",
    },
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
          root = function(fname)
            -- Tìm file phpunit.xml gần nhất tính từ file test
            return require("neotest.lib").files.match_root_pattern("phpunit.xml", "composer.json")(fname)
          end,
          phpunit_cmd = function()
            local container = vim.g.docker_container_name or "gobox-api"
            -- Tự động lấy đường dẫn tương đối từ root dự án
            local relative_path = vim.fn.expand("%:.")

            -- Chạy phpunit từ root của project bên trong docker
            -- return "docker exec "
            --   .. container
            --   .. " php vendor/bin/phpunit -c phpunit.xml --colors=always "
            --   .. relative_path
            -- return {
            --   "docker",
            --   "exec",
            --   vim.g.docker_container_name,
            --   "php",
            --   "vendor/bin/phpunit",
            --   relative_path,
            -- }

            return {
              "bash",
              "-c",
              -- $1 ở đây chính là đường dẫn tuyệt đối mà Neotest tự động truyền vào
              -- Ta dùng sed để cắt bỏ phần đường dẫn máy Host, chỉ giữ lại phần đuôi từ 'tests/...'
              "docker exec -w /var/www/html "
                .. container
                .. " php vendor/bin/phpunit $(echo $1 | sed 's|/home/kingdarkness/DEV/gobox/api/||')",

              "--", -- Dấu hiệu báo cho bash biết tham số tiếp theo là $1
            }
          end,
        },
      },
    },
  },
}
