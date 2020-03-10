-- vim:fdm=marker
-- Vim Color File
-- Name:       nvim-palenight.lua
-- Maintainer: https://github.com/kyazdani42
-- License:    The MIT License (MIT)
-- Based On:   https://github.com/drewtempelmeyer/palenight.vim and vscode material palenight

-- TODO: 
-- color vim.vim
-- color javascript.vim
-- color typescript.vim
-- color c.vim
-- color cpp.vim
-- color python.vim
-- color html.vim
-- color xml.vim
-- then, just add colors for every plugins as i need them

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
    NormalFloat  = { bg = bg_dark },
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
    Constant       = { fg = cyan },
    String         = { fg = green },
    Character      = { fg = green, gui = 'bold' },
    Number         = { fg = orange },
    Float          = { fg = orange },
    Boolean        = { fg = orange },

    Identifier     = { fg = heavy_red },
    Function       = { fg = cyan, gui = 'italic' },

    Statement      = { fg = blue, gui = 'italic' },
    Conditional    = { fg = cyan, gui = 'italic' },
    Repeat         = { fg = cyan, gui = 'italic' },
    Label          = { fg = cyan, gui = 'italic' },
    Exception      = { fg = cyan, gui = 'italic' },
    Operator       = { fg = cyan },
    Keyword        = { fg = heavy_red },

    Include        = { fg = blue },
    Define         = { fg = purple },
    Macro          = { fg = purple },
    PreProc        = { fg = yellow },
    PreCondit      = { fg = yellow },

    Type           = { fg = yellow },
    StorageClass   = { fg = yellow },
    Structure      = { fg = yellow },
    Typedef        = { fg = yellow },

    Special        = { fg = blue },
    SpecialChar    = {},
    Tag            = { fg = orange },
    SpecialComment = { fg = fg_dark, gui = 'bold' },
    Debug          = {},
    Delimiter      = {},

    Ignore         = {},
    Underlined     = { gui = 'underline' },
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
    luaTable  = { fg = fg_light },
    luaBraces = { fg = cyan },
    luaIn     = { fg = cyan, gui = 'italic' },

    -- https://github.com/tbastos/vim-lua
    luaFunc           = { fg = blue },
    luaFuncCall       = { fg = blue },
    luaFuncName       = { fg = blue },
    luaBuiltIn        = { fg = blue },
    luaLocal          = { fg = purple },
    luaSpecialValue   = { fg = purple },
    luaStatement      = { fg = purple },
    luaFunction       = { fg = cyan, gui = 'italic' },
    luaSymbolOperator = { fg = cyan },
    luaConstant       = { fg = orange },

    -- zsh.vim
    zshTodo            = code_syntax.Todo, 
    zshComment         = code_syntax.Comment,
    zshPreProc         = code_syntax.PreProc,
    zshString          = code_syntax.String,
    zshStringDelimiter = { fg = cyan },
    zshPrecommand      = { fg = blue },
    zshKeyword         = code_syntax.Function,
    zshCommands        = { fg = blue },
    zshOptStart        = { fg = blue, gui = 'italic' },
    zshOption          = { fg = cyan, gui = 'italic' },
    zshNumber          = code_syntax.Number,
    zshSubst           = { fg = yellow },
    zshSubstDelim      = { fg = cyan },

    -- Rust
    rustKeyword     = { fg = orange },
    rustFuncCall    = { fg = blue },
    rustModPathSep  = { fg = cyan },
    rustIdentifier  = { fg = fg_light },
    rustFuncName    = { fg = blue },
    rustSigil       = { fg = cyan },
    rustMacro       = { fg = blue },
    rustStorage     = { fg = orange },
    rustModPath     = { fg = fg_light },
    rustEnumVariant = { fg = fg_light },
    rustStructure   = { fg = orange },

    -- js
    javascriptBraces   = { fg = fg_light }, 
    javascriptReserved = { fg = purple }, 
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
