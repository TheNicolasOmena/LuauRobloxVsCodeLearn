local CollectionService = game:GetService("CollectionService")

for part in CollectionService:GetTagged("kPart") do
	part.Touched:Connect(function(hit)
		print("kPart Touched")
		if hit.Parent:FindFirstChild("Humanoid") then
			hit.Parent.Humanoid.Health = 0
		end
	end)
end
