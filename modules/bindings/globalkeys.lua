local modkey = config.modkey
local terminal = config.terminal

-- General keybindings
awful.keyboard.append_global_keybindings({
	awful.key({ modkey, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),

	awful.key({ modkey, "Shift" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),

	awful.key({ modkey }, "Return", function()
		awful.spawn(terminal)
	end, { description = "open a terminal", group = "launcher" }),

	awful.key({ modkey }, " ", function()
		awful.spawn(config.app_launcher)
	end, { description = "open the application launcher", group = "launcher" }),
})

-- Tags
awful.keyboard.append_global_keybindings({
	awful.key({
		modifiers = { modkey },
		keygroup = "numrow",
		description = "only view tag",
		group = "tag",
		on_press = function(index)
			local screen = awful.screen.focused()
			local tag = screen.tags[index]
			if tag then
				tag:view_only()
			end
		end,
	}),

	awful.key({
		modifiers = { modkey, "Shift" },
		keygroup = "numrow",
		description = "move focused client",
		group = "tag",
		on_press = function(index)
			if client.focus then
				local tag = client.focus.screen.tags[index]
				if tag then
					client.focus:move_to_tag(tag)
				end
			end
		end,
	}),
})

-- Focus
awful.keyboard.append_global_keybindings({
	-- Clients
	awful.key({ modkey }, "h", function()
		awful.client.focus.bydirection("left")
	end, { description = "focus left", group = "client" }),

	awful.key({ modkey }, "j", function()
		awful.client.focus.bydirection("down")
	end, { description = "focus down", group = "client" }),

	awful.key({ modkey }, "k", function()
		awful.client.focus.bydirection("up")
	end, { description = "focus up", group = "client" }),

	awful.key({ modkey }, "l", function()
		awful.client.focus.bydirection("right")
	end, { description = "focus right", group = "client" }),

	-- By index
	awful.key({ modkey }, "]", function()
		awful.client.focus.byidx(1)
	end, { description = "focus next by index", group = "client" }),

	awful.key({ modkey }, "[", function()
		awful.client.focus.byidx(-1)
	end, { description = "focus previous by index", group = "client" }),

	-- To screens
	awful.key({ modkey, "Mod1" }, "h", function()
		awful.screen.focus_bydirection("left")
	end, { description = "focus screen left", group = "client" }),

	awful.key({ modkey, "Mod1" }, "j", function()
		awful.screen.focus_bydirection("down")
	end, { description = "focus screen down", group = "client" }),

	awful.key({ modkey, "Mod1" }, "k", function()
		awful.screen.focus_bydirection("up")
	end, { description = "focus screen up", group = "client" }),

	awful.key({ modkey, "Mod1" }, "l", function()
		awful.screen.focus_bydirection("right")
	end, { description = "focus screen right", group = "client" }),
})
