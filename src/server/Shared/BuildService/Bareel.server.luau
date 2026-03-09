local Tags = game:GetService("CollectionService")
local SSS = game:GetService("ServerScriptService")
local zSpawner = SSS:WaitForChild("Zombies")
local Bareel = {}


local function WaveSpawn(bareel)
    print("WaveSpawn function called")
    prompt = bareel.ActionPrompt
    alarm = SSS.replicated.ReplicatedStorage.Audios.BuildingAudios.Alarm:Clone()
    alarm.Parent = bareel
    alarm:Play()
    task.wait(1)
    bareel.Transparency = 1
    bareel.CanCollide = false
end


for _, bareel in Tags:GetTagged("bareel") do
        bareel.Transparency = 0
        bareel.CanCollide = true
        bareel.ActionPrompt.Triggered:Connect(function()WaveSpawn(bareel)
    end)
end

