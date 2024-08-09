require("trouble").setup({
	vim.keymap.set("n", "<leader>at", "<cmd> Trouble diagnostics toggle <cr>"),
	vim.keymap.set("n", "<leader>t", "<cmd> Trouble diagnostics toggle filter.buf=0<cr>"),
	use_diagnostic_signs = true,
	focus = true,
})
