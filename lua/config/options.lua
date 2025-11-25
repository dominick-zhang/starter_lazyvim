-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- -- ~/.config/nvim/lua/config/options.lua

-- 打开自动换行显示
vim.opt.wrap = true

-- 关闭自动格式化
vim.g.autoformat = false

--使用系统剪切板复制粘贴
vim.opt.clipboard:append("unnamedplus")

--tab配置4空格
--vim.opt.tabstop = 4
--vim.opt.softtabstop = 4
--vim.opt.shiftwidth = 4
--vim.opt.expandtab = true  -- 默认用空格代替 tab

-- 强制默认使用 Unix 换行符
--vim.opt.fileformats = "unix,dos,mac" -- 读取时优先尝试 unix，但允许兼容 dos/mac
--vim.opt.fileformat = "unix" -- 新建文件默认使用 unix
