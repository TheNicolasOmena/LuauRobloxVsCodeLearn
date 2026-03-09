--[[local plate = script.Parent
local sound = plate.Sound
local landmine = plate.Parent
local canExplode = true
local debris = game:GetService("Debris")

local surface = workspace.Terrain
local function onTouch(otherPart)
	if canExplode then 
-- and otherPart ~= surface then
		canExplode = false
		local exp = Instance.new("Explosion", plate)
		exp.Position = plate.Position
		exp.BlastPressure = 500000
		exp.BlastRadius = 5
		exp.ExplosionType = Enum.ExplosionType.NoCraters
		sound:Play()
		plate.Parent.LED.Transparency = 1
		plate.Transparency = 1
		debris:AddItem(landmine, 2)
	end
end

plate.Touched:Connect(onTouch)]]