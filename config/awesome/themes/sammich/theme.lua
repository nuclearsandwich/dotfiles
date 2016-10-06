-- local xresources = require("beautiful.xresources")

-- local xcolors = xresources.get_current_theme()

-- local xcolors_to_base16 = function (x)
-- 	return base16 = {
-- 		foreground = x.foreground,
-- 		background = x.background,
-- 		base00 = x.color0,
-- 		base01 = x.color18,
-- 		base02 = x.color19,
-- 		base03 = x.color8,
-- 		base04 = x.color20,
-- 		base05 = x.color7,
-- 		base06 = x.color21,
-- 		base07 = x.color15,
-- 		base08 = x.color9,
-- 		base09 = x.color16
-- 		base0A = x.color3,
-- 		base0B = x.color10,
-- 		base0C = x.color14,
-- 		base0D = x.color12,
-- 		base0E = x.color13,
-- 		base0F = x.color17,
-- 	}
-- end


-- local base16 = xcolors_to_base16(xcolors)


local base16 = {
	base00 = "#131513",
	base01 = "#242924",
	base02 = "#5e6e5e",
	base03 = "#687d68",
	base04 = "#809980",
	base05 = "#8ca68c",
	base06 = "#cfe8cf",
	base07 = "#f4fbf4",
	base08 = "#e6193c",
	base09 = "#87711d",
	base0A = "#98981b",
	base0B = "#29a329",
	base0C = "#1999b3",
	base0D = "#3d62f5",
	base0E = "#ad2bee",
	base0F = "#e619c3",
}

theme = {}

theme.font          = "Noto Mono 11"
theme.useless_gap_width = 10

theme.bg_normal     = base16.base05
theme.bg_focus      = base16.base07
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = base16.base01
theme.fg_focus      = base16.base0D
theme.fg_urgent     = base16.base0F
theme.fg_minimize   = base16.base07

theme.border_width  = 2
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = base16.base08

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
theme.taglist_squares_sel   = "/usr/share/awesome/themes/default/taglist/squarefw.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/default/taglist/squarew.png"
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/steven/bg/color.jpg"

-- You can use your own layout icons like this:
theme.layout_uselesstile   = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_uselessspiral  = "/usr/share/awesome/themes/default/layouts/spiralw.png"
theme.layout_uselessfair = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairh = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairv = "/usr/share/awesome/themes/default/layouts/fairvw.png"
theme.layout_floating  = "/usr/share/awesome/themes/default/layouts/floatingw.png"
theme.layout_magnifier = "/usr/share/awesome/themes/default/layouts/magnifierw.png"
theme.layout_max = "/usr/share/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.png"
theme.layout_tile = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_tiletop = "/usr/share/awesome/themes/default/layouts/tiletopw.png"
theme.layout_spiral  = "/usr/share/awesome/themes/default/layouts/spiralw.png"
theme.layout_dwindle = "/usr/share/awesome/themes/default/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
