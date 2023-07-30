require("autoclose").setup({
    ["'"] = { escape = true, close = true, pair = "''", disabled_filetypes = {"rust"} },
})
