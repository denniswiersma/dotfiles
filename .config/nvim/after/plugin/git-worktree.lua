require("telescope").load_extension("git_worktree")

vim.keymap.set(
	"n",
	"<leader>sw",
	"<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>"
	-- { noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>nw",
	"<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>"
	-- { noremap = true, silent = true }
)
