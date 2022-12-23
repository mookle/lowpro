local groups = {
    all = {
        -- Revert to Hop's default highlight colours
        HopNextKey = { fg = "#ff007c" },
        HopNextKey1 = { fg = "#00dfff" },
        HopNextKey2 = { fg = "#2b8db3" },
        HopUnmatched = { fg = "#666666" },
    }
}

require("nightfox").setup({
    groups = groups,
})
