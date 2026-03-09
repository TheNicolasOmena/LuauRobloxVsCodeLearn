--[[local lava0 = script.Parent.LavaFlow
local lava1 = script.Parent.LavaFlow1
local trigger = script.Parent.Trigger

local pos = lava0.Position
local pos1 = lava1.Position
local size = lava0.Size
local size1 = lava1.Size



local function erupt()
	for i=1, 80, 1 do
		local increasevalue = Vector3.new(.024,3.4,3.4)
		lava0.Size = lava0.Size + increasevalue
		lava1.Size = lava1.Size + increasevalue
		task.wait(.1)
	end
end

local function drain()
	for i=1, 80, 1 do
		local decreasevalue = Vector3.new(0, 0.1, 0)
		lava0.Position = lava0.Position - decreasevalue
		lava1.Position = lava1.Position - decreasevalue
		task.wait(.1)
	end
end

local canErupt = true

trigger.Touched:Connect(
	function()
		if canErupt then
			canErupt = false
			print("Lava Erupt Started!")
			wait(2)
			erupt()
			wait(9)
			drain()
			wait(5)
			lava0.Position = pos
			lava1.Position = pos1
			lava0.Size = size
			lava1.Size = size1
			canErupt = true
		end
	end)]]