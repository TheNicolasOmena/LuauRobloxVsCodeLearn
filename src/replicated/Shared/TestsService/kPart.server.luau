--[[local CollectionService = game:GetService("CollectionService")

for _part in CollectionService:GetTagged("kPart")do
    kPart.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid")then
        hit.Parent.Humanoid.Health = 0
        end
    end)
end]]
