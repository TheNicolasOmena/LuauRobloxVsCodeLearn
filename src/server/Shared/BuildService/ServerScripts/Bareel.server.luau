local Tags = game:GetService("CollectionService")
local RS = game:GetService("ReplicatedStorage")
local Zombies = RS.Storage.Clones.Zombies4:Clone()
--local Bareel = {}


local function WaveSpawn(bareel)
    print("WaveSpawn function called")
    --prompt = bareel.ActionPrompt
    local alarm = RS.Storage.Audios.Alarm:Clone()
    alarm.Parent = bareel
    alarm:Play()
    task.wait(1)
    bareel.Transparency = 1
    bareel.CanCollide = false
end

local function BareelSetup(bareel)
    print("BareelSetup function called")
    local ZombiesClone = Zombies:Clone()
    ZombiesClone.Parent = game.Workspace
    bareel.Transparency = 1
    bareel.CanCollide = false
end


for _, bareel in Tags:GetTagged("bareel") do
        bareel.ActionPrompt.Triggered:Connect(
            function()
            BareelSetup(bareel)
            WaveSpawn(bareel)
    end)
end

