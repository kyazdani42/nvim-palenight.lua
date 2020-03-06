vim.fn.system('echo 1 > /home/kiyan/test')
local function highlight(group, styles)
    local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
    vim.api.nvim_command('hi! '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local colors = {
    red             = '#ff5370',
    light_red       = '#ff86a9',
    dark_red        = '#be5046',
    green           = '#c3e88d',
    yellow          = '#ffcb6b',
    dark_yellow     = '#f78c6c',
    blue            = '#82b1ff',
    purple          = '#c792ea',
    blue_purple     = '#939ede',
    cyan            = '#89DDFF',
    white           = '#bfc7d5',
    background      = '#292D3E',
    dark_background = '#1c2f2b',
    comment_grey    = '#697098',
    gutter_fg_grey  = '#4B5263',
    cursor_grey     = '#2C323C',
    visual_grey     = '#3E4452',
    menu_grey       = '#3E4452',
    special_grey    = '#3B4048',
    vertsplit       = '#181A1F',
    white_mask_1    = '#333747',
    white_mask_3    = '#474b59',
    white_mask_11   = '#989aa2',
};

local red              = colors.red
local light_red        = colors.light_red
local dark_red         = colors.dark_red
local green            = colors.green
local yellow           = colors.yellow
local dark_yellow      = colors.dark_yellow
local blue             = colors.blue
local purple           = colors.purple
local blue_purple      = colors.blue_purple
local cyan             = colors.cyan
local white            = colors.white
local background       = colors.background
local dark_background  = colors.dark_background
local comment_grey     = colors.comment_grey
local gutter_fg_grey   = colors.gutter_fg_grey
local cursor_grey      = colors.cursor_grey
local visual_grey      = colors.visual_grey
local menu_grey        = colors.menu_grey
local special_grey     = colors.special_grey
local vertsplit        = colors.vertsplit

local definitions = {
    Normal = { fg = white, bg = background },
    CursorLine = { bg = dark_background },
}

for group, styles in pairs(definitions) do
    highlight(group, styles)
end

vim.api.nvim_set_var('terminal_color_0',          background)
vim.api.nvim_set_var('terminal_color_1',          red)
vim.api.nvim_set_var('terminal_color_2',          green)
vim.api.nvim_set_var('terminal_color_3',          yellow)
vim.api.nvim_set_var('terminal_color_4',          blue)
vim.api.nvim_set_var('terminal_color_5',          purple)
vim.api.nvim_set_var('terminal_color_6',          cyan)
vim.api.nvim_set_var('terminal_color_7',          white)
vim.api.nvim_set_var('terminal_color_8',          visual_grey)
vim.api.nvim_set_var('terminal_color_9',          dark_red)
vim.api.nvim_set_var('terminal_color_10',         green)
vim.api.nvim_set_var('terminal_color_11',         dark_yellow)
vim.api.nvim_set_var('terminal_color_12',         blue)
vim.api.nvim_set_var('terminal_color_13',         purple)
vim.api.nvim_set_var('terminal_color_14',         cyan)
vim.api.nvim_set_var('terminal_color_15',         comment_grey)
vim.api.nvim_set_var('terminal_color_background', background)
vim.api.nvim_set_var('terminal_color_foreground', white)
