Trigger.RegisterHandler(World.cfg, "GAME_START", function()

    local players = Game.GetAllPlayers()
    for i, v in pairs(players) do
        PackageHandlers.sendServerHandler(v, "openMainUI")
        v.addValueDef("entityLink", "", true, true, true)
        v.addValueDef("entityPos", "", true, true, true)
    end
    
end)

PackageHandlers:Receive("changeModel", function(player, packet)
    player:changeActor(packet[1])
  end)