local utils = require(game.ServerScriptService.Server.Shared.BuildService.ModuleScripts.SessionUtils)
local numOfZombies = 10

task.wait(5) -- Initial delay before starting the wave loop
while true do
    task.wait(1)
    utils:startWave()
    task.wait(5)
    utils:spawnZombies(numOfZombies)
end

return