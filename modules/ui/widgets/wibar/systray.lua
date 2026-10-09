local function create(s)
	local widget = wibox.widget.systray()

	local icon_base_size = dpi(config.base_size - (config.base_size / 3), s)

	widget.base_size = icon_base_size
	widget.horizontal = true
	widget.screen = "primary"

	widget.forced_height = dpi(config.base_size, s)

	return wibox.widget({
		widget = wibox.container.margin,
		top = (config.base_size - icon_base_size) / 2,
		bottom = (config.base_size - icon_base_size) / 2,
		widget,
	})
end

return create
