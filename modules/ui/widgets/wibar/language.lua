local function create(s)
	local kbd = awful.widget.keyboardlayout()

	local label = wibox.widget({
		widget = wibox.widget.textbox,
	})

	local function sync()
		label.text = (kbd.widget:get_text() or ""):gsub("%s+", "")
	end

	sync()
	awesome.connect_signal("xkb::group_changed", sync)
	awesome.connect_signal("xkb::map_changed", sync)

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
							widget = wibox.widget.textbox,
							text = "lang",
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
						label,
					},
				},
			},
		},
	})
end

return create
