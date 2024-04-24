local options = {
    --
    -- Indentation
    --
    -- expandtab: convert tabs to spaces in INSERT mode
    -- softtabstop: number of spaces when editing
    -- shiftwidth: number of spaces when (auto)indenting
    -- shiftround: round to a multiple of shiftwidth when (auto)indenting
    --
    expandtab = true,
    softtabstop = -1, -- negative value here means the value of shiftwidth is used
    shiftwidth = 4,
    shiftround = true,

    --
    -- Line display/behaviour
    --
    -- number: display line numbers
    -- numberwidth: min column width for number gutter
    -- scrolloff: number of lines to display either side of the cursor
    -- cursorline: highlight the current line
    -- signcolumn: auto-expand/shrink the sign column; max 2 columns
    --
    number = true,
    numberwidth = 2,
    scrolloff = 12,
    cursorline = true,
    signcolumn = "auto:2",
    colorcolumn = "80",

    --
    -- Searching
    --
    -- ignorecase: ignore case when searching
    -- hlsearch: show search results as you type
    --
    ignorecase = true, -- ignore case when searching
    --hlsearch = false

    --
    -- Buffer management
    --
    -- splitbelow: open horizontal splits below the current file
    -- splitright: open vertical splits below the current file
    --
    splitbelow = true,
    splitright = true,

    --
    -- Folding
    --
    -- foldmethod: how folds are determined
    -- foldlevel: how many levels before folds are closed
    --
    foldmethod = "expr",
    foldexpr = "nvim_treesitter#foldexpr()",
    --foldlevel = 3,

    --
    -- Misc
    --
    -- visualbell: silence beeps
    -- updatetime: ms before hwap file is written / CursorHold event is trigggered
    -- termguicolors: true color support
    --
    visualbell = true,
    updatetime = 100, -- reduce default of 4000
    termguicolors = true
 }

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.o.background = "dark"
