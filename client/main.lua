RegisterNetEvent('pc-consumables:client:consume', function(useText, emote, variant, time)
    local timeToUse = 5000

    if time then
        timeToUse = time
    end

    exports['rpemotes']:EmoteCommandStart(emote, variant)
    lib.progressBar({
        duration = timeToUse,
        label = useText,
        useWhileDead = false,
        allowRagdoll = false,
        allowCuffed = false,
        allowFalling = false,
        canCancel = false,
        disable = {
            combat = true,
        },
        anim = anim,
        prop = prop,
    })
    exports['rpemotes']:EmoteCancel(true)
end)
