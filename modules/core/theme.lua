local theme_assets = require("beautiful.theme_assets")

local gfs = gears.filesystem

local themes_path = gfs.get_themes_dir()
local icons_path = gfs.get_configuration_dir() .. "/resources/icons/"
local recolor_image = gears.color.recolor_image

local theme = {}

-----------------------------
-- Base
-----------------------------

local colors = {
	base = "#191724",
	base_dim = "#16141f",
	surface = "#1f1d2e",
	overlay = "#26233a",
	muted = "#6e6a86",
	subtle = "#908caa",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_low = "#21202e",
	highlight_med = "#403d52",
	highlight_high = "#524f67",
}

colors.accent = colors.gold

theme.font = "GeistMono NFM SemiBold 8"

theme.useless_gap = dpi(config.base_size / 4)
theme.border_width = dpi(0)

theme.wallpaper = gfs.get_configuration_dir() .. "resources/wallpapers.jpg"

-----------------------------
-- Defaults
-----------------------------

theme.bg_normal = colors.base
theme.fg_normal = colors.text

theme.bg_focus = colors.accent
theme.fg_focus = theme.bg_normal

theme.bg_urgent = colors.love

-----------------------------
-- Task list
-----------------------------

theme.tasklist_bg_normal = colors.surface
theme.tasklist_fg_normal = theme.fg_normal

theme.tasklist_bg_focus = theme.bg_focus
theme.tasklist_fg_focus = theme.fg_focus

theme.tasklist_bg_minimize = colors.base_dim
theme.tasklist_fg_minimize = colors.muted

theme.tasklist_floating = ""
theme.tasklist_maximized = ""
theme.tasklist_minimized = ""

-----------------------------
-- Tag list
-----------------------------

theme.taglist_bg_empty = colors.base_dim
theme.taglist_fg_empty = colors.muted

theme.taglist_bg_focus = theme.bg_focus
theme.taglist_fg_focus = theme.fg_focus

theme.taglist_bg_occupied = colors.surface
theme.taglist_fg_occupied = theme.fg_normal

-----------------------------
-- Layout box
-----------------------------

theme.layoutbox_bg = colors.accent

-----------------------------
-- Title bar
-----------------------------

theme.titlebar_bg_normal = colors.surface
theme.titlebar_bg_focus = theme.titlebar_bg_normal

theme.titlebar_fg_normal = colors.muted
theme.titlebar_fg_focus = colors.accent

theme.titlebar_maximized_button_normal_active =
	recolor_image(icons_path .. "maximize-unactive.svg", theme.titlebar_fg_normal)
theme.titlebar_maximized_button_focus_active =
	recolor_image(icons_path .. "maximize-unactive.svg", theme.titlebar_fg_focus)

theme.titlebar_maximized_button_normal_inactive =
	recolor_image(icons_path .. "maximize-active.svg", theme.titlebar_fg_normal)
theme.titlebar_maximized_button_focus_inactive =
	recolor_image(icons_path .. "maximize-active.svg", theme.titlebar_fg_focus)

theme.titlebar_minimize_button_normal = recolor_image(icons_path .. "minimize.svg", theme.titlebar_fg_normal)
theme.titlebar_minimize_button_focus = recolor_image(icons_path .. "minimize.svg", theme.titlebar_fg_focus)

theme.titlebar_close_button_normal = recolor_image(icons_path .. "close.svg", theme.titlebar_fg_normal)
theme.titlebar_close_button_focus = recolor_image(icons_path .. "close.svg", theme.titlebar_fg_focus)

-----------------------------
-- Boot menu
-----------------------------

theme.bootmenu_button = recolor_image(icons_path .. "menu.svg", theme.fg_normal)
theme.bootmenu_button_bg = colors.overlay

-----------------------------
-- Text clock
-----------------------------

theme.textclock_date_fg = colors.muted
theme.textclock_fg = theme.fg_normal

-----------------------------
-- Systam tray
-----------------------------

theme.systray_icon_spacing = dpi(1)

theme.bg_minimize = "#444444"
theme.bg_systray = theme.bg_normal

-----------------------------
-- System menu
-----------------------------

theme.sysmenu_bg = colors.surface

theme.sysmenu_poweroff = recolor_image(icons_path .. "poweroff.svg", theme.fg_normal)
theme.sysmenu_reboot = recolor_image(icons_path .. "reboot.svg", theme.fg_normal)

-- Other

theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.border_color_normal = "#000000"
theme.border_color_active = "#535d6c"
theme.border_color_marked = "#91231c"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width = dpi(100)

theme.layout_fairh = gears.color.recolor_image(themes_path .. "default/layouts/fairhw.png", colors.base)
theme.layout_fairv = gears.color.recolor_image(themes_path .. "default/layouts/fairvw.png", colors.base)
theme.layout_floating = gears.color.recolor_image(themes_path .. "default/layouts/floatingw.png", colors.base)
theme.layout_magnifier = gears.color.recolor_image(themes_path .. "default/layouts/magnifierw.png", colors.base)
theme.layout_max = gears.color.recolor_image(themes_path .. "default/layouts/maxw.png", colors.base)
theme.layout_fullscreen = gears.color.recolor_image(themes_path .. "default/layouts/fullscreenw.png", colors.base)
theme.layout_tilebottom = gears.color.recolor_image(themes_path .. "default/layouts/tilebottomw.png", colors.base)
theme.layout_tileleft = gears.color.recolor_image(themes_path .. "default/layouts/tileleftw.png", colors.base)
theme.layout_tile = gears.color.recolor_image(themes_path .. "default/layouts/tilew.png", colors.base)
theme.layout_tiletop = gears.color.recolor_image(themes_path .. "default/layouts/tiletopw.png", colors.base)
theme.layout_spiral = gears.color.recolor_image(themes_path .. "default/layouts/spiralw.png", colors.base)
theme.layout_dwindle = gears.color.recolor_image(themes_path .. "default/layouts/dwindlew.png", colors.base)
theme.layout_cornernw = gears.color.recolor_image(themes_path .. "default/layouts/cornernww.png", colors.base)
theme.layout_cornerne = gears.color.recolor_image(themes_path .. "default/layouts/cornernew.png", colors.base)
theme.layout_cornersw = gears.color.recolor_image(themes_path .. "default/layouts/cornersww.png", colors.base)
theme.layout_cornerse = gears.color.recolor_image(themes_path .. "default/layouts/cornersew.png", colors.base)

theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
