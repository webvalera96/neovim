return {
	"G00380316/ssh-launcher.nvim",
	cmd = { "Ssh", "SshLauncher" },
	keys = {
		{ "<leader>ss", "<cmd>Ssh<cr>", desc = "SSH hosts" },
	},
	opts = {
		terminal = {
			strategy = "tab", -- tab | float | vsplit | split | tmux
		},
		ui = {
			picker = "telescope", -- or manager | fzf-lua | snacks
		},
	},
}
