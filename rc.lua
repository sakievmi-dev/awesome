package.loaded["naughty.dbus"] = {} -- replaced by dunst

require("modules.core.globals")

beautiful.init(gears.filesystem.get_configuration_dir() .. "modules/core/theme.lua")

require("awful.autofocus")

require("modules.core.error-handling")
require("modules.core.layouts")
require("modules.core.tags")
require("modules.core.rules")

require("modules.bindings.clientbuttons")
require("modules.bindings.clientkeys")
require("modules.bindings.globalkeys")

require("modules.ui.titlebars")
require("modules.ui.wibar")
require("modules.ui.sysmenu")
require("modules.ui.wallpapers")
require("modules.ui.notifications")

require("modules.core.autostart")
