if World.isClient then
require "script_client.main"
else
require "script_server.server_script"
end
require "script_common.main"

Lib.subscribeEvent(Event.EVENT_PLAYER_LOGIN, function(info)
    local userId = info.userId
    local player = Game.GetPlayerByUserId(userId)
    if player then
        player:setActorScale(Lib.v3(0.5,0.5,0.5))
    end
end)