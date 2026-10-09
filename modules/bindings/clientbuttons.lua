local modkey = config.modkey

client.connect_signal("request::default_mousebindings", function()
	awful.mouse.append_client_mousebindings({
		awful.button({}, awful.button.names.LEFT, function(c)
			c:activate({ context = "mouse_click" })
		end),

		awful.button({ modkey }, awful.button.names.LEFT, function(c)
			c:activate({ context = "mouse_click", action = "mouse_move" })
		end),

		awful.button({ modkey }, awful.button.names.RIGHT, function(c)
			c:activate({ context = "mouse_click", action = "mouse_resize" })
		end),
	})
end)
