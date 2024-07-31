Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        DrawTxt(1.160, 0.500, 1.0, 1.0, 0.55, "~c~ID: ~w~" .. tostring(GetPlayerServerId(PlayerId())), 128, 128, 128, 255)
    end
end)

function DrawTxt(x, y, width, height, scale, text, r, g, b, a)
    if not IsHudHidden() then
        SetTextFont(6)
        SetTextProportional(0)
        SetTextScale(0.0, 0.42)
        SetTextColour(r, g, b, a)
        SetTextDropShadow(0, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(x - width / 1, y - height / 2 + 0.848)
    end
end