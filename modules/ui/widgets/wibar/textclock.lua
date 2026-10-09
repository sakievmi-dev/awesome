local function create(s)
	return wibox.widget({
		widget = wibox.container.background,

		forced_height = dpi(config.base_size),

		{
			widget = wibox.container.place,

			{
				widget = wibox.container.margin,
				left = dpi(config.base_size / 10, s),
				right = dpi(config.base_size / 10, s),

				{
					widget = wibox.layout.fixed.horizontal,

					{
						widget = wibox.container.background,
						fg = beautiful.textclock_date_fg,
						{
							widget = wibox.widget.textclock,
							format = "%b %d",
						},
					},

					{
						widget = wibox.container.margin,
						left = dpi(4, s),
						right = dpi(4, s),
						{
							widget = wibox.container.constraint,
							strategy = "exact",
							width = 1,
							{
								widget = wibox.widget.separator,
								orientation = "vertical",
								color = "#6e6a86",
								span_ratio = 0.5,
								thickness = 1,
							},
						},
					},

					{
						widget = wibox.container.background,
						fg = beautiful.textclock_fg,
						{
							widget = wibox.widget.textclock,
							format = "%H:%M",
						},
					},
				},
			},
		},
	})
end

return create
