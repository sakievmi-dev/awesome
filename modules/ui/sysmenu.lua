screen.connect_signal("request::desktop_decoration", function(s)
	s.sysmenu = require("modules.ui.widgets.sysmenu")(s)

	awesome.connect_signal("ui::sysmenu::toggle", function()
		s.sysmenu:toggle()
	end)
end)
