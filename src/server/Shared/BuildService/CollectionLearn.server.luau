-- Esse Script funciona apenas um por vez realmente!
-- Se não tiver "task.wait" não dará para ver a mudança, entretanto com o wait vai um por vez
-- e acredito que por ordem no Workspace

local CollectionService = game:GetService("CollectionService")

CollectionService:GetInstanceAddedSignal("kModel"):Connect(function()
	print("NovoBlocoAdicionado")
end)

CollectionService:GetInstanceRemovedSignal("kModel"):Connect(function()
	print("BlocoRemovido")
end)

for _, model in CollectionService:GetTagged("kModel") do
	print("CodeWorking!!")
	if model.kPart then
		model.kPart.Color = Color3.new(1, 0, 0)
		--task.wait(1)
		model.kPart.Material = Enum.Material.Neon
		--task.wait(1)
		model.kPart.Color = Color3.new(0, 1, 0)
		print("Your Data:", model.kPart.BrickColor)
	else
		print("model.Part does'not exists")
	end
	print("End of code :D")
end
