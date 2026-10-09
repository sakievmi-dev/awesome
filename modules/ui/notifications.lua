-- naughty.config.defaults.position = "top_left"
-- naughty.config.padding = dpi(config.base_size * 8)
-- naughty.config.spacing = dpi(config.base_size)

naughty.config.padding = 0

ruled.notification.connect_signal("request::rules", function()
	ruled.notification.append_rule({
		rule = {},
		properties = { position = "top_left", screen = awful.screen.preferred },
	})
end)

naughty.connect_signal("request::display", function(n)
	naughty.layout.box({
		notification = n,
		widget_template = {
			{
				{
					{
						naughty.widget.icon,
						naughty.widget.title,
						naughty.widget.message,
						spacing = 5,
						layout = wibox.layout.fixed.vertical,
					},
					margins = 10,
					widget = wibox.container.margin,
				},
				bg = beautiful.notification_bg or beautiful.bg_normal,
				widget = wibox.container.background,
			},
			left = 40, -- нужный отступ от левого края экрана
			widget = wibox.container.margin,
		},
	})
end)
