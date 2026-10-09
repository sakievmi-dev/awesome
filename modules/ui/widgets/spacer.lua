local function create()
	return wibox.widget({
		widget = wibox.container.constraint,
		strategy = "exact",
		width = 1,
		{
			widget = wibox.widget.separator,
			orientation = "vertical",
			color = "#6e6a86",
			span_ratio = 0.7,
			thickness = 1,
		},
	})
end

return create
