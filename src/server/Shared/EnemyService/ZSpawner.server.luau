local RS = game:GetService("ReplicatedStorage")
local SSS = game:GetService('ServerScriptService')

local ttl = 25
local intermission = 3
local round = 10
local activated = true

local Zombies = RS.Storage.Clones:WaitForChild("Zombies4")
local debris = game:GetService("Debris")
local prompt = game.Workspace.Udemy.SimTek.Done.ZombieSpawn.Barrel.toplid.ActionPrompt


prompt.Triggered:Connect(function()
    task.wait(intermission)
    if activated then
        activated = false
        print("Intermission over. Spawning zombies.")
        local newZombies = Zombies:Clone()
        newZombies.Parent = game.Workspace.Udemy.SimTek.Done.ZombieSpawn
        task.wait(round)
        debris:AddItem(newZombies, ttl)
        task.wait(round)
        activated = true
    end
    if not activated then
        print("Spawner is not activated.")
    end
end)

--[[
local function alarmStart(player: Player, seconds: number, audio: Instance )
	print("Triggered")
	alarm.Parent = bareel
	alarm:Play()
	task.wait(1)
	bareel.Transparency = 1
	bareel.CanCollide = false
end

prompt.Triggered:Connect(alarmStart(10, alarm))]]