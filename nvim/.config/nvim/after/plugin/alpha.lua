local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local pluginCount = vim.fn.len(vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))
local v = vim.version()
local datetime = os.date " %d-%m-%Y  %H:%M:%S"

dashboard.section.header.val = {
    "                                    ██             ",
    "▄▄ ▄▄▄     ▄▄▄▄    ▄▄▄   ▄▄▄▄ ▄▄▄ ▄▄▄  ▄▄ ▄▄ ▄▄   ",
    " ██  ██  ▄█▄▄▄██ ▄█  ▀█▄  ▀█▄  █   ██   ██ ██ ██  ",
    " ██  ██  ██      ██   ██   ▀█▄█    ██   ██ ██ ██  ",
    "▄██▄ ██▄  ▀█▄▄▄▀  ▀█▄▄█▀    ▀█    ▄██▄ ▄██ ██ ██▄ ",
    "                                                  ",
    "                                                  ",
}

dashboard.section.buttons.val = {
    dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
    dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
    dashboard.button("u", "  > Update Plugins", ":PackerSync<CR>"),
    dashboard.button("s", "  > Settings", ":e $HOME/.config/nvim/lua/denniswiersma/set.lua <CR>"),
    dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = {
    "",
    datetime,
    " v" .. v.major .. "." .. v.minor .. "." .. v.patch,
    " Loaded " .. pluginCount .. " plugins",
    " denniswiersma"
}

dashboard.section.header.opts.hl = "Error"
dashboard.section.buttons.opts.hl = "Label"

alpha.setup(dashboard.opts)
