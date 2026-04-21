-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.wrap = true -- enable line wrapping
opt.linebreak = true -- wrap at word boundaries instead of mid-word
opt.breakindent = true -- preserve indentation on wrapped lines
vim.opt.clipboard = ""
