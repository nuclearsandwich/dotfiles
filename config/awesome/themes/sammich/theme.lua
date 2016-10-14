
local colors = {
	foreground = "#e5f5e5",
	background = "#2d2d2d",
	cursor = "#e5f5e5",
	color0 = "#45474a",
	color1 = "#ff037e",
	color2 = "#00de7f",
	color3 = "#ff8c0a",
	color4 = "#4fa7ff",
	color5 = "#e600e6",
	color6 = "#44cced",
	color7 = "#d3d0c8",
	color8 = "#747369",
	color9 = "#ff80bb",
	color10 = "#a6ffa6",
	color11 = "#ffa552",
	color12 = "#6699cc",
	color13 = "#d052df",
	color14 = "#adadff",
	color15 = "#f2f0ec",
}

theme = {}

theme.font          = "Noto Mono 11"
theme.useless_gap_width = 10

theme.bg_normal     = colors.color8
theme.bg_focus      = colors.color2
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = colors.foreground
theme.fg_focus      = colors.color0
theme.fg_urgent     = colors.color8
theme.fg_minimize   = colors.color7

theme.border_width  = 2
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = colors.color8

theme.asset_root = "/home/steven/.config/awesome/themes/sammich/"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urkgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = theme.asset_root .. "taglist/squarefw.png"
theme.taglist_squares_unsel = theme.asset_root .. "taglist/squarew.png"
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.asset_root .. "submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme.asset_root .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.asset_root .. "titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.asset_root .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.asset_root .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.asset_root .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.asset_root .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.asset_root .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.asset_root .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.asset_root .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.asset_root .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.asset_root .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.asset_root .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.asset_root .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.asset_root .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.asset_root .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.asset_root .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.asset_root .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.asset_root .. "titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/steven/bg/color.jpg"

-- You can use your own layout icons like this:
theme.layout_uselesstile   = "layouts/tilew.png"
theme.layout_uselessspiral  = "layouts/spiralw.png"
theme.layout_uselessfair = "layouts/fairhw.png"
theme.layout_fairh = "layouts/fairhw.png"
theme.layout_fairv = "layouts/fairvw.png"
theme.layout_floating  = "layouts/floatingw.png"
theme.layout_magnifier = "layouts/magnifierw.png"
theme.layout_max = "layouts/maxw.png"
theme.layout_fullscreen = "layouts/fullscreenw.png"
theme.layout_tilebottom = "layouts/tilebottomw.png"
theme.layout_tileleft   = "layouts/tileleftw.png"
theme.layout_tile = "layouts/tilew.png"
theme.layout_tiletop = "layouts/tiletopw.png"
theme.layout_spiral  = "layouts/spiralw.png"
theme.layout_dwindle = "layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
