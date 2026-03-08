local Players = game:GetService("Players")

function onPlayerAdded(player: Player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Parent = player
    leaderstats.Name = "leaderstats"

    local coins = Instance.new("IntValue")
    coins.Parent = leaderstats
    coins.Name = "Coins"
    coins.Value = 0 
end
Players.PlayerAdded:Connect(onPlayerAdded)