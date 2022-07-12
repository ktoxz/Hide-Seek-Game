Trigger.RegisterHandler(this:cfg(), "ENTITY_CLICK", function(context)
    local target = context.obj1
    local player = context.obj2
    local entityLink = player:getValue("entityLink");
    local entityPos = player:getValue("entityPos");
    local isSur = player:getValue("isSur")
    if(isSur == 1) then
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
        Lib.pv(target:cfg())
        local entityActorLink = target:cfg().actorName
        local entityLink = target:cfg().fullName
        player:setValue("entityPos", player:getPosition())
        player:setValue("entityLink", entityLink)
        player:changeActor(entityActorLink)
        target:kill(player, "hehe")
        print("the target is"..target.name)
    end
    if(isSur == 0) then
        print("hehe")
    end
    
end)