local function create(s)
	local spacers = {
		left = wibox.widget({
			widget = wibox.container.margin,
			left = dpi(8, s),
			right = dpi(6, s),

			require("modules.ui.widgets.spacer")(),
		}),

		normal = wibox.widget({
			widget = wibox.container.margin,
			left = dpi(6, s),
			right = dpi(6, s),

			require("modules.ui.widgets.spacer")(),
		}),

		invisible = wibox.widget({
			widget = wibox.container.margin,
			left = dpi(3, s),
			right = dpi(3, s),
		}),
	}

	local right = wibox.widget({
		layout = wibox.layout.fixed.horizontal,
	})

	if s == screen.primary then
		right:add(require("modules.ui.widgets.wibar.systray")(s))
		right:add(spacers.normal)
	end

	right:add(require("modules.ui.widgets.wibar.language")(s))
	right:add(spacers.invisible)
	right:add(require("modules.ui.widgets.wibar.textclock")(s))
	right:add(spacers.normal)
	right:add(require("modules.ui.widgets.wibar.sysmenu")(s))

	return awful.wibar({
		screen = s,
		position = "top",

		height = dpi(config.base_size, s),

		margins = {
			left = dpi(config.base_size * 8, s),
			right = dpi(config.base_size * 8, s),
		},

		widget = {
			widget = wibox.container.margin,
			{
				layout = wibox.layout.align.horizontal,
				expand = "inside",

				{
					layout = wibox.layout.fixed.horizontal,
					require("modules.ui.widgets.wibar.layoutbox")(s),
					spacers.left,
					require("modules.ui.widgets.wibar.taglist")(s),
				},

				{
					widget = wibox.container.place,
					halign = "center",
					require("modules.ui.widgets.wibar.tasklist")(s),
				},

				right,
			},
		},
	})
end

return create
