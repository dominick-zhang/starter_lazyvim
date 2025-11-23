-- ~/.config/nvim/lua/plugins/conform.lua
return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- 禁用自动格式化
      format_on_save = false,
      formatters_by_ft = {
        cpp = { "clang_format" },
        c = { "clang_format" },
      },
      formatters = {
        clang_format = {
          command = "clang-format",
          --args = { "--style=Google", "--fallback-style=Google" },
          args = { "-style=\"{BasedOnStyle: webkit, IndentWidth: 4, UseTab: Never, SortIncludes: false}\""},
        },
      },
    },
  },
}
