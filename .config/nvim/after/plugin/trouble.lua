require("trouble").setup({
    vim.keymap.set("n", "<leader>t", function() require("trouble").toggle() end),
    use_diagnostic_signs = true
})
