--[[local ColService = game:GetService("CollectionService")

for _, Pilar in ColService:GetTagged("ButtonPilar") do
    Pilar.Conjunto.Button.ClickDetector.MouseClick:Connect(function(Click)
        print("Button Clicked")
    end)
end]]
