local buttons = {
	awful.button({}, awful.button.names.LEFT, function()
		awesome.emit_signal("ui::sysmenu::toggle")
	end),
}

local function create(s)
	return wibox.widget({
		widget = wibox.container.background,
		bg = beautiful.bootmenu_button_bg,

		forced_width = dpi(config.base_size),
		forced_height = dpi(config.base_size),

		buttons = buttons,

		{
			widget = wibox.container.place,

			{
				widget = wibox.container.margin,
				margins = dpi(config.base_size / 10, s),

				{
					widget = wibox.widget.imagebox,
					image = beautiful.bootmenu_button,
				},
			},
		},
	})
end

return create
