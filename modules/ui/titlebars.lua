client.connect_signal("request::titlebars", function(c)
	local buttons = {
		awful.button({}, 1, function()
			c:activate({ context = "titlebar", action = "mouse_move" })
		end),

		awful.button({}, 3, function()
			c:activate({ context = "titlebar", action = "mouse_resize" })
		end),
	}

	awful.titlebar(c, {
		size = dpi(config.base_size),
	}).widget = {
		layout = wibox.layout.align.horizontal,

		{ -- Left
			layout = wibox.layout.fixed.horizontal,
			buttons = buttons,
			awful.titlebar.widget.iconwidget(c),
		},

		{ -- Middle
			layout = wibox.layout.flex.horizontal,
			buttons = buttons,
			{ -- Title
				widget = awful.titlebar.widget.titlewidget(c),
				halign = "center",
			},
		},

		{ -- Right
			layout = wibox.layout.fixed.horizontal(),
			awful.titlebar.widget.minimizebutton(c),
			awful.titlebar.widget.maximizedbutton(c),
			awful.titlebar.widget.closebutton(c),
		},
	}
end)
