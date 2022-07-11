Trigger.RegisterHandler(this:cfg(), "ENTITY_CLICK", function(context)   
    local from = context.obj2                                              --Get the entity that initiated the click
    PackageHandlers.sendServerHandler(from, "openPickerUI")
end)