local RS = game:GetService("ReplicatedStorage")
local SSS = game:GetService("ServerScriptService")

local utils = require(game.ServerScriptService.Server.shared.BuildService.ModuleScripts.SessionUtils)
local numOfZombies = 10
local maxZombies = 20               
local zFolder = workspace.ThingsF.Enemies
local numOfMines = 5
local distanceFromSign = 50

local LavaBe = RS.Shared.BuildService:WaitForChild("LavaBe")
local waveLoop = 0


task.wait(5) -- Initial delay before starting the wave loop
while true do
    task.wait(1)
    utils:startWave()
    task.wait(5)
    utils:spawnMines(numOfMines, distanceFromSign)

    local cnt = zFolder:GetChildren()
    if cnt == 0 then
        utils:spawnZombies(numOfZombies)
    end
    --[[if cnt >= maxZombies then
        print("Too many zombies alive, waiting to spawn more.")
    end]]       
    end
return