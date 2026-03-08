local EconomyModule = {}

function EconomyModule.AddCoins(player: Player, amount: number)
    local leaderstats = player:FindFirstChild("leaderstats")
    local coins = leaderstats.coins.Value
    if not leaderstats then
        return
    end
    if not coins or not coins:IsA("IntValue") then 
        return
end
       coins += amount
end

return EconomyModule


