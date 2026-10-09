local function run_once(cmd)
	local application = cmd:match("^%S+")
	awful.spawn.with_shell("pgrep -u $USER -x " .. application .. " > /dev/null || (" .. cmd .. ")")
end

run_once("picom")
run_once("easyeffects -w")
