local mPos
Trigger.RegisterHandler(this:cfg(), "ENTITY_CLICK", function(context)
    local target = context.obj1
    local player = context.obj2
    local entityLink = player:getValue("entityLink");
    local entityPos = player:getValue("entityPos");
    if(entityLink == "" or entityPos == "") then
        print("no")
    end 
    if(entityLink ~= "" and entityPos ~= "") then
        local world = World.CurWorld    
        local defaultMap = world.defaultMap
        local createParams = {cfgName = entityLink, pos=entityPos, map=defaultMap}
        print("entityPos "..entityPos.x.." "..entityPos.y .. " " .. entityPos.z )
        print("hello" .. entityLink)
        EntityServer.Create(createParams)
        
    end
    player:setValue("entityPos", target:getPosition())
    player:setValue("entityLink", "myPlugin/6db74975-0824-4052-a052-1bc5376a5037")
    player:changeActor("asset/map_tron_tim/b5s.actor")
    target:kill(player, "hehe")
    
    print("the target is"..target.name)
end)