-- Cursor settings --
vim.opt.cursorline = true

-- Number line --
vim.opt.number = true
vim.opt.relativenumber = false

-- Tab --
-- vim.opt.expandtab = true
-- vim.opt.tabstop = 2
vim.opt.shiftwidth = 4

-- Bufferline --
vim.opt.termguicolors = true

-- Shell --
vim.o.shell = "zsh"
vim.o.shellcmdflag = "-l -i"
-- if vim.fn.executable("pwsh") == 1 then
-- 	vim.o.shell = "pwsh"
-- else
-- 	vim.o.shell = "powershell"
-- end
--
-- -- Setting shell command flags
-- vim.o.shellcmdflag =
-- 	"-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
--
-- -- Setting shell redirection
-- vim.o.shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'
--
-- -- Setting shell pipe
-- vim.o.shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'
--
-- -- Setting shell quote options
-- vim.o.shellquote = ""
-- vim.o.shellxquote = ""
