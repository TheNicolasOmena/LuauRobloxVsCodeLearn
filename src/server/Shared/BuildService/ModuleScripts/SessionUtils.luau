local utils = {}
local RS = game:GetService("ReplicatedStorage")
local rnd = Random.new(tick())
local zFolder = workspace.Enemies

function utils:startWave()
	print("Wave started")
end

function utils:spawnZombies(numOfZombies)
	local tZom = RS.Replicated.ReplicatedStorage.Clones:WaitForChild("Drooling Zombie")
	local spawnLocation = game.Workspace.SpawnLocations:GetChildren()

	for i = 1 , numOfZombies, 1 do
		local newZom = tZom:Clone()
		newZom.Parent = zFolder
		local idx = rnd:NextInteger(1, #spawnLocation)
		newZom:MoveTo(spawnLocation[idx].Position)
        task.wait(1)
	end
end

return utils
