local buttons = {
	awful.button({}, awful.button.names.LEFT, function()
		awful.layout.inc(1)
	end),
	awful.button({}, awful.button.names.RIGHT, function()
		awful.layout.inc(-1)
	end),
}

local function create(s)
	return wibox.widget({
		widget = wibox.container.background,
		bg = beautiful.layoutbox_bg,

		forced_width = dpi(config.base_size),
		forced_height = dpi(config.base_size),

		buttons = buttons,

		{
			widget = wibox.container.place,

			{
				widget = wibox.container.margin,
				margins = dpi(config.base_size / 10, s),

				awful.widget.layoutbox({
					screen = s,
				}),
			},
		},
	})
end

return create
