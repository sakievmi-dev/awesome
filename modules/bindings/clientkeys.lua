local modkey = config.modkey

client.connect_signal("request::default_keybindings", function()
	awful.keyboard.append_client_keybindings({
		awful.key({ modkey }, "f", function(c)
			c.maximized = not c.maximized
			c:raise()
		end, { description = "toggle maximize", group = "client" }),

		awful.key({ modkey, "Shift" }, "f", function(c)
			c.fullscreen = not c.fullscreen
			c:raise()
		end, { description = "toggle fullscreen", group = "client" }),

		awful.key({ modkey, "Control" }, "q", function(c)
			c:kill()
		end, { description = "close", group = "client" }),

		awful.key({ modkey }, "v", function(c)
			awful.client.floating.toggle(c)
		end, { description = "toggle floating", group = "client" }),
	})
end)
