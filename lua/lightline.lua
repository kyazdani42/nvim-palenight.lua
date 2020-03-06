local colors = {normal = {}, inactive = {}, insert = {}, replace = {}, visual = {}, tabline = {}}

local colors_vertsplit = {"#181A1F", 59, 15}
local colors_special_grey = {"#3B4048", 238, 15}
local colors_menu_grey = {"#3E4452", 237, 8}
local colors_cursor_grey = {"#2C323C", 236, 8}
local colors_gutter_fg_grey = {"#4B5263", 238, 15}
local colors_blue = {"#82b1ff", 39, 4}
local colors_dark_red = {"#BE5046", 196, 9}
local colors_white = {"#bfc7d5", 145, 7}
local colors_green = {"#c3e88D", 114, 2}
local colors_purple = {"#c792ea", 170, 5}
local colors_yellow = {"#ffcb6b", 180, 3}
local colors_light_red = {"#ff869a", 204, 1}
local colors_red = {"#ff5370", 204, 1}
local colors_dark_yellow = {"#F78C6C", 173, 11}
local colors_cyan = {"#89DDFF", 38, 6}
local colors_comment_grey = {"#697098", 59, 15}
local colors_black = {"#292D3E", 235, 0}

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

colors.inactive.left   = { { colors_black, colors_menu_grey }, { colors_black, colors_menu_grey } }
colors.inactive.right  = colors.inactive.left
colors.inactive.middle = { { colors_black, colors_menu_grey } }

vim.api.nvim_set_var('lightline#colorscheme#palenight#palette', vim.api.nvim_call_function('lightline#colorscheme#flatten', { colors }))
