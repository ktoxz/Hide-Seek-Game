if World.isClient then
require "script_client.main"
else
require "script_server.server_script"
end
require "script_common.main"