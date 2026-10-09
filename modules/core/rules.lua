local append_rule = ruled.client.append_rule

ruled.client.connect_signal("request::rules", function()
	-- Default rule (All clients will match this rule)
	append_rule({
		id = "global",
		rule = {},
		properties = {
			focus = awful.client.focus.filter,
			raise = true,
			screen = awful.screen.preferred,
			placement = awful.placement.centered,
		},
	})

	-- Add titlebars to normal clients and dialogs
	append_rule({
		id = "titlebars",
		rule_any = {
			type = { "normal", "dialog" },
		},
		properties = {
			titlebars_enabled = true,
		},
	})

	-- Remove titlebars from some windows
	append_rule({
		rule_any = {
			class = { "helium", "Helium", "neovide", "discord", "steamwebhelper", "steam" },
		},
		properties = {
			titlebars_enabled = false,
		},
	})

	-- Floating clients.
	append_rule({
		id = "floating",
		rule_any = {
			instance = { "copyq", "pinentry" },
			class = {
				"Arandr",
				"Blueman-manager",
				"Gpick",
				"Kruler",
				"Sxiv",
				"Tor Browser",
				"Wpa_gui",
				"veromix",
				"xtightvncviewer",
			},
			name = {
				"Event Tester", -- xev.
			},
			role = {
				"AlarmWindow", -- Thunderbird's calendar.
				"ConfigManager", -- Thunderbird's about:config.
				"pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
			},
		},
		properties = {
			floating = true,
		},
	})

	-- Specific
	append_rule({
		rule = { class = "TelegramDesktop", name = "Media viewer" },
		properties = {
			titlebars_enabled = false,
			floating = true,
			fullscreen = false,
			size_hints_honor = false,
		},
	})
end)
