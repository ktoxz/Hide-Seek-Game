-- PackageHandlers.registerClientHandler("openPickerUI", function()
--  UI:openWindow("GUI\\ClientPickObj\\ClientPickObj" )
-- end)

-- PackageHandlers.registerClientHandler("openMainUI", function()
--  UI:openWindow("GUI\\ClientMainUI\\ClientMainUI")
-- end)


-- PackageHandlers.registerClientHandler("openMainUI", function()
--   UI:openWindow("GUI\\LockCam\\LockCam")
--  end)

local CameraCfg = {
    enable = true,
    lockBodyRotation = false
}
Blockman.Instance():changeCameraCfg(CameraCfg, -1)