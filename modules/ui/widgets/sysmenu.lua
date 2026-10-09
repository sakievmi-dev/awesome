local function create(s)
	local popup = awful.popup({
		shape = gears.shape.rectangle,
		bg = beautiful.bg_normal,

		screen = s,

		-- minimum_width = dpi(config.base_size * 6),
		-- minimum_height = dpi(config.base_size * 4),

		ontop = true,
		visible = false,

		placement = function(d)
			awful.placement.top_right(d, {
				margins = {
					right = dpi(config.base_size * 8, s),
					top = dpi(4, s),
				},
				honor_workarea = true,
			})
		end,

		widget = {
			widget = wibox.container.background,
			bg = beautiful.sysmenu_bg,

			{
				layout = wibox.layout.fixed.vertical,

				{
					layout = wibox.layout.fixed.horizontal,
					require("modules.ui.widgets.sysmenu.poweroff")(),
					require("modules.ui.widgets.sysmenu.reboot")(),
				},
			},
		},
	})

	function popup:toggle()
		if not self.visible then
			self.visible = true
		else
			self.visible = false
		end
	end

	return popup
end

return create
