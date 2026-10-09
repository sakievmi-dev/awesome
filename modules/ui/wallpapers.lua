screen.connect_signal("request::wallpaper", function(s)
	gears.wallpaper.maximized(beautiful.wallpaper, s)
end)
