screen.connect_signal("request::desktop_decoration", function(s)
	s.wibar = require("modules.ui.widgets.wibar")(s)
end)
