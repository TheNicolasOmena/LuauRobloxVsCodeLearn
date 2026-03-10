local utils = require(game.ServerScriptService.Server.Shared.BuildService.ModuleScripts.SessionUtils)
local numOfZombies = 10
local maxZombies = 20               
local zFolder = workspace.Enemies

task.wait(5) -- Initial delay before starting the wave loop
while true do
    task.wait(1)
    utils:startWave()
    task.wait(5)
    local cnt = zFolder:GetChildren()
    if cnt == 0 then
        utils:spawnZombies(numOfZombies)
    end
    --[[if cnt >= maxZombies then
        print("Too many zombies alive, waiting to spawn more.")
    end]]       
    end
return