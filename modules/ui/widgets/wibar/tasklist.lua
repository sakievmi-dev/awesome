local buttons = {
	awful.button({}, 1, function(c)
		c:activate({ context = "tasklist", action = "toggle_minimization" })
	end),

	awful.button({}, 3, function()
		awful.menu.client_list({ theme = { width = 250 } })
	end),

	awful.button({}, 4, function()
		awful.client.focus.byidx(-1)
	end),

	awful.button({}, 5, function()
		awful.client.focus.byidx(1)
	end),
}

local function create(s)
	return awful.widget.tasklist({
		screen = s,
		filter = awful.widget.tasklist.filter.currenttags,

		buttons = buttons,

		layout = {
			layout = wibox.layout.fixed.horizontal,
			spacing = dpi(config.base_size / 8),
		},

		widget_template = {
			widget = wibox.container.constraint,
			strategy = "max",
			width = dpi(config.base_size * 8, s),

			{
				widget = wibox.container.margin,
				top = dpi(1, s),
				down = dpi(1, s),

				{
					widget = wibox.container.background,
					id = "background_role",
					forced_height = dpi(config.base_size - (config.base_size / 6), s),

					{
						widget = wibox.container.margin,
						left = dpi(config.base_size / 4, s),
						right = dpi(config.base_size / 4, s),

						{
							widget = wibox.container.place,
							valign = "center",

							{
								widget = wibox.widget.textbox,
								id = "text_role",
							},
						},
					},
				},
			},
		},
	})
end

return create
