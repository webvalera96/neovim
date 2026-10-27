-- Disable netrw --
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Cursor settings --
vim.opt.cursorline = true

-- Number line --
vim.opt.number = true
vim.opt.relativenumber = false

-- Tab --
-- vim.opt.expandtab = true
-- vim.opt.tabstop = 2
vim.opt.shiftwidth = 4

-- Termguicolores --
vim.opt.termguicolors = true

-- Mouse --
vim.opt.mousescroll = "ver:3,hor:0"

-- Shell --
-- pwsh on Windows, zsh everywhere else (see lua/config/shell.lua)
local shell = require("config.shell")
vim.o.shell = shell.shell
vim.o.shellcmdflag = shell.shellcmdflag
if shell.shellredir then
	vim.o.shellredir = shell.shellredir
end
if shell.shellpipe then
	vim.o.shellpipe = shell.shellpipe
end
if shell.shellquote ~= nil then
	vim.o.shellquote = shell.shellquote
end
if shell.shellxquote ~= nil then
	vim.o.shellxquote = shell.shellxquote
end

-- Search --
vim.opt.hlsearch = false
