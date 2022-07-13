-- PackageHandlers.registerClientHandler("openPickerUI", function()
--  UI:openWindow("GUI\\ClientPickObj\\ClientPickObj" )
-- end)

-- PackageHandlers.registerClientHandler("openMainUI", function()
--  UI:openWindow("GUI\\ClientMainUI\\ClientMainUI")
-- end)


 PackageHandlers.registerClientHandler("openMainUI", function()
   UI:openWindow("GUI\\LockCam\\LockCam")
end)

PackageHandlers.registerClientHandler("openSpectate", function()
  UI:openWindow("GUI\\SpectateView\\SpectateView")
end)