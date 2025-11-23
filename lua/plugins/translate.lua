--lua/plugins/translate.lua

return {
  {
    "uga-rosa/translate.nvim",
    config = function()
      require("translate").setup({
        default = {
          command = "google",
        },
        preset = {
          output = {
            split = {
              append = true,
            },
          },
        },
      })

      local map = vim.keymap.set

      -- 翻译光标处单词
      map("n", "<leader>ct", "<cmd>Translate ZH<CR>", { desc = "Translate (cursor)" })

      -- 翻译选中内容
      map("v", "<leader>ct", "<cmd>Translate ZH<CR>", { desc = "Translate (selection)" })

    end,
  },
}
