
-- main.lua (server)

-- Placeholder por si en el futuro quieres guardar/cargar inventario del jugador

RegisterNetEvent("f2_inventory:saveInventory")
AddEventHandler("f2_inventory:saveInventory", function(inventory)
    local src = source
    print(("El jugador %s envió un inventario para guardar"):format(src))
    -- Aquí podrías guardar a base de datos o archivo JSON
end)

RegisterNetEvent("f2_inventory:requestInventory")
AddEventHandler("f2_inventory:requestInventory", function()
    local src = source
    local defaultInventory = {} -- Puedes cargar esto desde la DB
    TriggerClientEvent("f2_inventory:loadInventory", src, defaultInventory)
end)
