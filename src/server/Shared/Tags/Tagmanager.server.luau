--[[local CollectionService = game:GetService("CollectionService")

local tagName = "kPart"

local function changePartCollor(): ()
    local Parts = CollectionService:GetTagged(tagName)
    print(Parts)
	Parts = Color3.new(1, 0, 0)
    --local hum = game.Players.LocalPlayer.Character.Humanoid
  	--local Part.BrickColor = BrickColor.new("Bright Blue")
    --local Parts2 = game.Workspace.Udemy.SimTek.GitKillParts:GetChildren()
   for _, Part in pairs(Parts) do
		Part.Color = Color3.new(1, 0, 0) -- Bright red
		Part.Material = Enum.Material.Neon
    end
end

changePartCollor()

CollectionService:GetInstanceAddedSignal(tagName):Connect(function(ins: Instance)
    print(ins)
end)]]