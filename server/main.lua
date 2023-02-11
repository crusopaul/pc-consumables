for k,v in pairs(Config.Consumables) do
    ESX.RegisterUsableItem(k, function(playerId)
        local xPlayer = ESX.GetPlayerFromId(playerId)
        exports['ox_inventory']:RemoveItem(playerId, k, 1)

        for _,q in ipairs(v.impact) do
            if q.type == 'status' then
                exports['pc-needs']:alterStatus(xPlayer.identifier, q.name, q.amount)
            elseif q.type == 'buff' then
                exports['pc-needs']:addEffect(xPlayer.identifier, q.name, 'buff', q.amount, q.duration)
            elseif q.type == 'enfe' then
                exports['pc-needs']:addEffect(xPlayer.identifier, q.name, 'enfe', q.amount, q.duration)
            end
        end

        TriggerClientEvent('pc-consumables:client:consume', xPlayer.source, v.useText, v.emoteName, v.variant, v.time)
    end)
end
