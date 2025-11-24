-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<C-a>", "^", { desc = "Move cursor to the beginning of the line" })
map("v", "<C-a>", "^", { desc = "Move cursor to the beginning of the line" })
map("n", "<C-e>", "$", { desc = "Move cursor to the end of line" })
map("v", "<C-e>", "$", { desc = "Move cursor to the end of line" })

-- -- 垂直分屏：右側新建（sl） / 左側新建（sh）, or <leader>wv
-- map("n", "<leader>sl", function()
--   vim.opt.splitright = true
--   vim.cmd.vsplit()
-- end, { desc = "Split vertical (right)" })
--
-- map("n", "<leader>sh", function()
--   vim.opt.splitright = false
--   vim.cmd.vsplit()
-- end, { desc = "Split vertical (left)" })
--
-- -- 水平分屏：下方新建（sj） / 上方新建（sk）
-- map("n", "<leader>sj", function()
--   vim.opt.splitbelow = true
--   vim.cmd.split()
-- end, { desc = "Split horizontal (below)" })
--
-- map("n", "<leader>sk", function()
--   vim.opt.splitbelow = false
--   vim.cmd.split()
-- end, { desc = "Split horizontal (above)" })

-- 打開 terminal（下方）, or <leader>ws
map("n", "<leader>`", function()
  vim.opt.splitbelow = true
  vim.cmd.split()
  vim.cmd.terminal()
end, { desc = "Open terminal below" })

-- 在 terminal 模式下按 ESC 退出到 normal 模式
map("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

---- F2: Toggle Neo-tree (file explorer), <leader>e
map("n", "<F2>", function()
  -- 确保 snacks 已加载
  if not package.loaded["snacks"] then
    vim.notify("Snacks is not loaded!", vim.log.levels.WARN)
    return
  end

  local root = require("lazy.core.util").root or vim.fn.getcwd
  require("snacks").explorer({
    cwd = root(),
    position = "left", --unuse ?
  })
end, { desc = "Toggle Snacks Explorer (Root)" })

-- F3: Show document symbols via built-in LSP, <leader>cs
--map("n", "<F3>", "<cmd>Trouble symbols toggle<cr>", { desc = "Symbols (Trouble)" })
map("n", "<F3>", function()
  require("trouble").toggle({
    mode = "symbols",
    position = "right", --unuse ?
  })
end, { desc = "Symbols (Trouble) Left" })

-- 格式化当前文件, F7 or <leader>cf
map("n", "<F7>", function()
  require("conform").format()
end, { desc = "Format file with conform.nvim" })

--格式化选中的代码块（可视模式）
map("v", "<F7>", function()
  require("conform").format({ bufnr = 0 })
end, { desc = "Format selected lines with conform.nvim" })


--find file, <leader>ff <leader><space>
map("n", "<C-p>", function()
  -- 确保 snacks 已加载
  if not package.loaded["snacks"] then
    vim.notify("Snacks is not loaded!", vim.log.levels.WARN)
    return
  end

  local root = require("lazy.core.util").root or vim.fn.getcwd
  require("snacks").picker.files({
    cwd = root(),
  })
end, { desc = "Find Files" })


--find buffer, <leader>fb <leader>,
map("n", "<C-n>", function()
  -- 确保 snacks 已加载
  if not package.loaded["snacks"] then
    vim.notify("Snacks is not loaded!", vim.log.levels.WARN)
    return
  end

  local root = require("lazy.core.util").root or vim.fn.getcwd
  require("snacks").picker.buffers({})
end, { desc = "Find Buffers" })


--find symbols, <leader>sg


