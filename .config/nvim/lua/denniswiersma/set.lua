vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- auto format on write
vim.cmd([[augroup Format]])
vim.cmd([[autocmd! * <buffer>]])
vim.cmd([[autocmd BufWritePost * FormatWrite]])
vim.cmd([[augroup END]])

-- set diagnostics icons
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	pattern = "*",
-- 	callback = function()
-- 		-- Check if Neovim was started with a file or not.
-- 		if #vim.v.argv == 1 then
-- 			-- If no file was provided, open Neotree.
-- 			vim.cmd("Neotree position=current")
-- 		end
-- 		-- If a file was provided, Neovim opens it by default, so no need to do anything.
-- 	end,
-- })

-- enter neotree on startup
-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	pattern = "*",
-- 	command = "Neotree position=current",
-- })
