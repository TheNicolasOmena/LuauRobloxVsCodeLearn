local utils = {}
local RS = game:GetService("ReplicatedStorage")
local rnd = Random.new(tick())

function utils:startWave()
	print("Wave started")
end

function utils:spawnZombies(numOfZombies)
	local tZom = RS.Replicated.ReplicatedStorage.Clones:WaitForChild("Drooling Zombies")
	local spawnLocation = game.Workspace.SpawnLocations:GetChildren()

	for i = 1, numOfZombies do
		local newZom = tZom:Clone()
		newZom.Parent = workspace
		local idx = rnd:NextInteger(1, #spawnLocation)
		newZom.MoveTo(spawnLocation[idx].Position)
	end
end

return utils
