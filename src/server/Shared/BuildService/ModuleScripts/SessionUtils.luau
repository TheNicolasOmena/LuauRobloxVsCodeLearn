local utils = {}
local RS = game:GetService("ReplicatedStorage")
local rnd = Random.new(tick())
local zFolder = workspace.ThingsF.Enemies
local lMinesFolder = workspace.ThingsF.LMines
local signPos = workspace.ThingsF.LMines.Sign.Place.Position
local debris = game:GetService("Debris")

local function castRayDownForHeight(x, z)
	local origin = Vector3.new(x, 500, z)
	local stop = Vector3.new(x, -20, z)
	local dir = (stop - origin)
	local result = workspace:Raycast(origin, dir, nil)
	if result then
		return result.Position.Y
	end
	
end


function utils:sartWave()
	print("Wave started")
end


function utils:spawnMines(numOfMines : number, radius : number)
	print("MinesSpawned")
	local mine = RS.Storage.Clones:WaitForChild("Mines")
	local cnt = #lMinesFolder:GetChildren()
	for i = cnt+1, numOfMines, 1 do
		local xRnd = rnd:NextInteger(-radius, radius)
		local zRnd = rnd:NextInteger(-radius, radius)
		local pos = Vector3.new(signPos.X - xRnd, mine.Model.MineBase.Position.y + 2, signPos.Z - zRnd)
		
		local newMine = mine:Clone()
		newMine.Parent = lMinesFolder
		newMine.Position = Vector3.new(pos)
		newMine.Position = pos
		--newMine.MineBase.Position = pos
		newMine.MineBase.CanCollide = true

		debris:AddItem(mine, rnd:NextInteger(120,300))

	end
end


function utils:startWave()
	print("Wave started")
end

function utils:spawnZombies(numOfZombies)
	local tZom = RS.Storage.Clones:WaitForChild("Drooling Zombie")
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
