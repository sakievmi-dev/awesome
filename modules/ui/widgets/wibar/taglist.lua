local buttons = {
	awful.button({}, 1, function(t)
		t:view_only()
	end),
}

local function create(s)
	return awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,

		buttons = buttons,

		style = {
			shape = gears.shape.rectangle,
		},

		widget_template = {
			widget = wibox.container.background,
			{
				widget = wibox.container.margin,
				margins = dpi(config.base_size / 12, s),
				{
					widget = wibox.container.background,
					id = "background_role",

					forced_width = dpi(config.base_size, s),
					forced_height = dpi(config.base_size, s),

					{
						widget = wibox.widget.textbox,
						id = "text_role",

						align = "center",
						valign = "center",
					},
				},
			},
		},
	})
end

return create
