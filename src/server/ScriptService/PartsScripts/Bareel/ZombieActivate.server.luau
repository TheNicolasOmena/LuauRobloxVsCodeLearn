--[[local RS = game:GetService("ReplicatedStorage")
local SSS = game:GetService('ServerScriptService')

local Zombies = RS.Replicated.ReplicatedStorage.Clones:WaitForChild("Zombies4")
local debris = game:GetService("Debris")

local script = SSS.Server.Shared.EnemyService.ZSpawner
local ttl = script:WaitForChild("TimeToLive")
local intermission = script:WaitForChild("Intermission")
local round = script:WaitForChild("Round")
local activated = script:WaitForChild("Activated")

activated.Value = false

while true do 
    task.wait(intermission.Value)
    if activated.Value then
        local newZombies = Zombies:Clone()
		newZombies.Parent = game.Workspace.Udemy.SimTek.Done.ZombieSpawn
        task.wait(round.Value)
        debris:AddItem(newZombies, ttl.Value)
    end
    if not activated.Value then
        print("Spawner is not activated.")
    end
end

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
--]]