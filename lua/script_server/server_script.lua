Trigger.RegisterHandler(World.cfg, "GAME_START", function()

    local players = Game.GetAllPlayers()
    local survivor = Game.GetTeam(1, true):getEntityList()
    local hunter = Game.GetTeam(2, true):getEntityList()
    for _, v in pairs(survivor) do 
        if(v.isPlayer == true) then
            PackageHandlers.sendServerHandler(v, "openMainUI")
            v.addValueDef("entityLink", "", true, true, true)
            v.addValueDef("entityPos", "", true, true, true)
            v.addValueDef("isSur", 1, true, true, true)
            v:setValue("isSur", 1)
        end
    end
    for _, v in pairs(hunter) do 
        if(v.isPlayer == true) then
            v.addValueDef("isSur", 0, true, true, true)
            v:setValue("isSur", 0)
        end
    end
    for _, v in pairs(players) do 
        print(v.name .. " " .. v:getValue("isSur"))
    end
end)

PackageHandlers:Receive("changeModel", function(player, packet)
    player:changeActor(packet[1])
end)

