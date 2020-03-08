-- vim:fdm=marker
-- Vim Color File
-- Name:       nvim-palenight.lua
-- Maintainer: https://github.com/kyazdani42
-- License:    The MIT License (MIT)
-- Based On:   https://github.com/drewtempelmeyer/palenight.vim and vscode material palenight

-- TODO: 
-- Fix git stuff, (check git commit)
-- Finish and check the editor highlight
-- Better vim default syntax
-- Color rust.vim
-- Color js plugin
-- Color ts plugin
-- Color c/cpp plugin
-- Color python plugin

-- Highlight Function And Color definitons {{{

local function highlight(group, styles)
    local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
    vim.api.nvim_command('highlight '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local bg_dark        = '#1c1f2b'
local bg             = '#292d3e'
local bg_light       = '#32374d'
local bg_lighter     = '#444267'
local grey           = '#8796b0'
local red            = '#f07178'
local heavy_red      = '#ff5370'
local green          = '#c3e88d'
local blue           = '#82aaff'
local yellow         = '#ffcb6b'
local orange         = '#f78c6c'
local purple         = '#c792ea'
local cyan           = '#89ddff'
local fg             = '#959dcb'
local fg_light       = '#bfc7d5'
local fg_dark        = '#676e96'
local hollow         = '#424760'
local hollow_lighter = '#30354e'
local white          = '#ffffff'

-- }}}

-- Editor Highlight Groups {{{

local editor_syntax = {
    CursorLine   = { bg = bg_dark },
    Cursor       = { fg = bg, bg = yellow },
    Directory    = { fg = blue, gui = 'bold' },
    DiffAdd      = { fg = green },
    DiffChange   = { fg = yellow },
    DiffDelete   = { fg = red },
    DiffText     = { fg = blue },
    EndOfBuffer  = { bg = bg, fg = bg },
    ErrorMsg     = { fg = red, gui = 'bold' },
    VertSplit    = { bg = bg, fg = bg_dark },
    Folded       = { fg = fg_dark, gui = 'italic' },
    FoldColumn   = { fg = yellow },
    SignColumn   = { fg = yellow },
    IncSearch    = { bg = yellow, fg = bg },
    Substitute   = { bg = blue, fg = bg },
    LineNr       = { fg = fg_dark },
    CursorLineNr = { fg = fg },
    MatchParen   = { fg = cyan, gui = 'bold' },
    Normal       = { fg = fg_light, bg = bg },
    Pmenu        = { bg = bg_dark, fg = fg_light },
    PmenuSel     = { bg = cyan, fg = bg_lighter, gui = 'bold' },
    PmenuSbar    = { bg = bg_lighter },
    PmenuThumb   = { bg = fg },
    Search       = { bg = hollow },
    SpecialKey   = { bg = bg_light },
    SpellBad     = { gui = 'underline', sp = red },
    SpellCap     = { gui = 'underline', sp = yellow },
    SpellLocal   = { gui = 'underline', sp = orange },
    SpellRare    = { gui = 'underline', sp = blue },
    TabLine      = { bg = bg, fg = fg_light },
    TabLineFill  = { bg = bg, fg = fg_light },
    TabLineSel   = { bg = cyan, fg = bg_dark, gui = 'bold'},
    Title        = { fg = green },
    Visual       = { bg = hollow_lighter },
    VisualNOS    = { bg = hollow_lighter },
    WarningMsg   = { fg = yellow, gui = 'italic' },
    Whitespace   = { bg = yellow }, -- TODO: i don't know where this is

    -- git highlighting
    gitcommitComment        = { fg = fg_dark, gui = 'italic' },
    gitcommitUntracked      = { fg = fg_dark, gui = 'italic' },
    gitcommitDiscarded      = { fg = fg_dark, gui = 'italic' },
    gitcommitSelected       = { fg = fg_dark, gui = 'italic' },
    gitcommitUnmerged       = { fg = green },
    gitcommitBranch         = { fg = purple },
    gitcommitNoBranch       = { fg = purple },
    gitcommitDiscardedType  = { fg = red },
    gitcommitSelectedType   = { fg = green },
    gitcommitUntrackedFile  = { fg = cyan },
    gitcommitDiscardedFile  = { fg = red },
    gitcommitDiscardedArrow = { fg = red },
    gitcommitSelectedFile   = { fg = green },
    gitcommitSelectedArrow  = { fg = green },
    gitcommitUnmergedFile   = { fg = yellow },
    gitcommitUnmergedArrow  = { fg = yellow },
    gitcommitSummary        = { fg = fg_light },
    gitcommitOverflow       = { fg = red },
    gitcommitOnBranch      = {},
    gitcommitHeader        = {},
    gitcommitFile          = {},

    -- User dependent groups, probably useless to change the default:
    Conceal      = {},
    ModeMsg      = {},
    MsgArea      = {},
    MsgSeparator = {},
    MoreMsg      = {},
    NonText      = {},
    NormalFloat  = {},
    Question     = {},
    QuickFixLine = {},
    StatusLine   = {},
    StatusLineNC = {},
    WildMenu     = {}
}

for group, styles in pairs(editor_syntax) do
    highlight(group, styles)
end

-- }}}

-- Vim Default Code Syntax {{{
            
local code_syntax = {
    Comment        = { fg = fg_dark, gui = 'italic' },
    Constant       = { fg = yellow },
    String         = { fg = green },
    Character      = { fg = green, gui = 'bold' },
    Number         = { fg = orange },
    Float          = { fg = orange },
    Boolean        = { fg = orange },

    Identifier     = { fg = blue },
    Function       = { fg = cyan, gui = 'italic' },

    Statement      = { fg = blue, gui = 'italic' },
    Conditional    = { fg = cyan, gui = 'italic' },
    Repeat         = { fg = cyan, gui = 'italic' },
    Label          = { fg = cyan, gui = 'italic' },
    Operator       = { fg = cyan, gui = 'italic' },
    Exception      = { fg = cyan, gui = 'italic' },
    Keyword        = { fg = orange },

    Include        = { fg = blue },
    Define         = { fg = blue },
    Macro          = { fg = yellow },
    PreProc        = { fg = fg, gui = 'italic' },
    PreCondit      = { fg = fg, gui = 'italic' },

    Type           = { fg = yellow },
    StorageClass   = { fg = yellow },
    Structure      = { fg = yellow },
    Typedef        = { fg = blue },

    Special        = { fg = cyan },
    SpecialChar    = { fg = cyan },
    Tag            = { fg = orange },
    SpecialComment = { fg = fg, gui = 'bold' },
    Debug          = { fg = yellow },
    Delimiter      = {},

    Ignore         = {},
    Underlined     = { fg = cyan, gui = 'underline' },
    Error          = { fg = heavy_red },
    Todo           = { fg = purple, gui = 'bold' },
}

for group, styles in pairs(code_syntax) do
    highlight(group, styles)
end

-- }}}

-- Plugin Highlight Groups {{{

local plugin_syntax = {
    GitGutterAdd           = { fg = green },
    GitGutterChange        = { fg = yellow },
    GitGutterDelete        = { fg = red },
    GitGutterChangeDelete  = { fg = orange },
}

for group, styles in pairs(plugin_syntax) do
    highlight(group, styles)
end

-- }}}

-- Syntax Plugin And Language Highlight Groups {{{

local lang_syntax = {
    luaTable          = { fg = fg_light },
    luaBraces         = { fg = fg_light },
    luaIn             = { fg = cyan, gui = 'italic' },

    -- https://github.com/tbastos/vim-lua
    luaFunc           = { fg = blue },
    luaFuncCall       = { fg = blue },
    luaFuncName       = { fg = blue },
    luaBuiltIn        = { fg = blue },
    luaLocal          = { fg = purple },
    luaSpecialValue   = { fg = blue },
    luaFunction       = { fg = cyan, gui = 'italic' },
    luaSymbolOperator = { fg = cyan },
    luaConstant       = { fg = orange },
}

for group, styles in pairs(lang_syntax) do
    highlight(group, styles)
end

-- }}}

-- Setting Neovim Terminal Color {{{

vim.api.nvim_set_var('terminal_color_0',          bg)
vim.api.nvim_set_var('terminal_color_1',          red)
vim.api.nvim_set_var('terminal_color_2',          green)
vim.api.nvim_set_var('terminal_color_3',          yellow)
vim.api.nvim_set_var('terminal_color_4',          blue)
vim.api.nvim_set_var('terminal_color_5',          purple)
vim.api.nvim_set_var('terminal_color_6',          cyan)
vim.api.nvim_set_var('terminal_color_7',          fg)
vim.api.nvim_set_var('terminal_color_8',          grey)
vim.api.nvim_set_var('terminal_color_9',          red)
vim.api.nvim_set_var('terminal_color_10',         green)
vim.api.nvim_set_var('terminal_color_11',         orange)
vim.api.nvim_set_var('terminal_color_12',         blue)
vim.api.nvim_set_var('terminal_color_13',         purple)
vim.api.nvim_set_var('terminal_color_14',         cyan)
vim.api.nvim_set_var('terminal_color_15',         white)
vim.api.nvim_set_var('terminal_color_background', bg)
vim.api.nvim_set_var('terminal_color_foreground', fg)

-- }}}
