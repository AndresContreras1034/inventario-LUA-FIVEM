local menuOpen = false
local currentMenu = nil

RegisterCommand("toggleInventory", function(source, args, rawCommand)
    openMenu("menu1")
end, false)

RegisterKeyMapping("toggleInventory", "Abrir inventario (5 slots)", "keyboard", "F2")

RegisterCommand("toggleInventory2", function(source, args, rawCommand)
    openMenu("menu2")
end, false)

RegisterKeyMapping("toggleInventory2", "Abrir inventario grande (20 slots)", "keyboard", "F3")

function openMenu(menuType)
    if menuOpen then return end

    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        menu = menuType
    })
    menuOpen = true
    currentMenu = menuType
end

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close"
    })
    menuOpen = false
    currentMenu = nil
    cb({})
end)
