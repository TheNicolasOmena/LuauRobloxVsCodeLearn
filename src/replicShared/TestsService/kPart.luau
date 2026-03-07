local CollectionService = game:GetService('CollectionService')

for kBrick in CollectionService:GetTagged('kPart')do
    kBrick.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild('Humanoid')then
        hit.Parent.Humanoid.Health = 0
        end
    end)
end
