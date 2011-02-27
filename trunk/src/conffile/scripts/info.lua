#!/usr/bin/lua
henv = io.popen("env")
env = {}
for line in henv:lines() do
	if line:sub(1,3) == "LT_" then
		__, __, key, value = string.find(line,"(%a+)%s*=%s*(.*)");
		env[key]=value;
	end
end
henv:close()
if env["info"] == "1" then
	print(env["message"]);
end
