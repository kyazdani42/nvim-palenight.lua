local colors = {
    normal = {},
    inactive = {},
    insert = {},
    replace = {},
    visual = {},
    tabline = {}
}

local function create_color(color)
    return { color, 0, 0 }
end

local colors_vertsplit      = create_color("#1b1e2b")
local colors_special_grey   = create_color("#1b1e2b")
local colors_menu_grey      = create_color("#292d3e")
local colors_cursor_grey    = create_color("#1b1e2b")
local colors_gutter_fg_grey = create_color("#292d3e")
local colors_blue           = create_color("#82b1ff")
local colors_dark_red       = create_color("#BE5046")
local colors_white          = create_color("#bfc7d5")
local colors_green          = create_color("#c3e88D")
local colors_purple         = create_color("#c792ea")
local colors_yellow         = create_color("#ffcb6b")
local colors_light_red      = create_color("#ff869a")
local colors_red            = create_color("#ff5370")
local colors_dark_yellow    = create_color("#F78C6C")
local colors_cyan           = create_color("#89DDFF")
local colors_comment_grey   = create_color("#697098")
local colors_black          = create_color("#1b1e2b")

colors.normal.left     = { { colors_black, colors_purple }, { colors_purple, colors_menu_grey } }
colors.normal.right    = colors.normal.left
colors.normal.middle   = { { colors_comment_grey, colors_black } }
colors.normal.warning  = { { colors_black, colors_yellow } }
colors.normal.error    = { { colors_black, colors_red } }

colors.insert.left     = { { colors_black, colors_blue }, { colors_blue, colors_menu_grey } }
colors.insert.right    = colors.insert.left
colors.insert.middle   = colors.normal.middle

colors.visual.left     = { { colors_black, colors_cyan }, { colors_cyan, colors_menu_grey } }
colors.visual.right    = colors.visual.left
colors.visual.middle   = colors.normal.middle

colors.replace.left    = { { colors_black, colors_green }, { colors_green, colors_menu_grey } }
colors.replace.right   = colors.replace.left
colors.replace.middle  = colors.normal.middle

colors.tabline.left    = { { colors_yellow, colors_menu_grey } }
colors.tabline.right   = { { colors_black, colors_yellow } }
colors.tabline.middle  = { { colors_black, colors_menu_grey } }
colors.tabline.tabsel  = colors.tabline.right

colors.inactive.left   = { { colors_comment_grey, colors_black }, { colors_comment_grey, colors_black } }
colors.inactive.right  = { { colors_black, colors_black }, { colors_black, colors_black } }
colors.inactive.middle = { {  colors_comment_grey, colors_black } }

local lightline_var       = 'lightline#colorscheme#palenight#palette'
local lightline_flat_func = 'lightline#colorscheme#flatten'
local colors_flattened    =  vim.api.nvim_call_function(lightline_flat_func, { colors })

vim.api.nvim_set_var(lightline_var, colors_flattened)
