-- Shell settings, picked per platform.
-- Windows: PowerShell 7 (pwsh, falling back to Windows PowerShell).
-- Everything else (macOS/Linux): zsh.

local M = {}

if vim.fn.has("win32") == 1 then
	M.shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"
	M.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
	M.shellredir = '2>&1 | Out-File -Encoding utf8 %s; exit $LastExitCode'
	M.shellpipe = '2>&1 | Tee-Object -FilePath %s; exit $LastExitCode'
	M.shellquote = ""
	M.shellxquote = ""
else
	M.shell = "zsh"
	-- login shell so /etc/zprofile & ~/.zprofile PATH entries are loaded
	M.shellcmdflag = "-l -c"
end

return M
