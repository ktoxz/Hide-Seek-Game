local btnOpen = self:child("LockCam")
btnOpen.onMouseClick = function()
    local CameraCfg = {
        enable = true,
        lockBodyRotation = true
    }
    Blockman.Instance():changeCameraCfg(CameraCfg, -1)
    self:close()
    UI:openWindow("GUI\\LockCam\\LockCam" )
end