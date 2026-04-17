function ColorMyPencils(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function LineNumberColors()
	-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = true }) -- blue
	-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#CBA6F7", bold = true }) -- mauve
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#A892CC", bold = false }) -- a more muted mauve

	vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true })

	-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = true }) -- magenta
	-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FAB387", bold = true }) -- peach
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#D18D68", bold = false }) -- a more muted peach
end

ColorMyPencils()
LineNumberColors()
