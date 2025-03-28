local Ox = require '@ox_core.lib.init'
local bridge = {}

--- @param source integer
function bridge.getPlayer(source)
    return Ox.GetPlayer(source)
end

---@param identifier string
function bridge.getSourceFromIdentifier(identifier)
    local player = Ox.GetPlayerFromFilter({ identifier = identifier })
    return player and player.source or nil
end

---@param player table
function bridge.getPlayerIdentifier(player)
    return player.identifier
end

RegisterNetEvent('ox:playerLoaded', function(playerId)
    OnPlayerLoaded(playerId)
end)

return bridge