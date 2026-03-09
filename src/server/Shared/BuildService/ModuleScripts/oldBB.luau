--[[local CollectionService = game:GetService("CollectionService")
local bolingBalls = CollectionService:GetTagged("BolingBall")

local function setupBolingBall(bolingBall)
	local ball = bolingBall.Model.Ball
	local stopper = bolingBall.Model.Stopper
	local button = bolingBall.Conjunto.Buttom

	button.ClickDetector.MouseClick:Connect(function()
		print("Button Clicked")
        ball.Transparency = 1
        ball.CanCollide = false
        ball.Anchored = true
        local currBoulder = nil
        local canTrigger = false
        local debris = game:GetService("Debris")

		task.wait(0.5)
		stopper.CanCollide = false
		task.wait(10)
		stopper.CanCollide = true
	end)
end

-- Configura todas as bolas existentes
for _, bolingBall in bolingBalls do
	setupBolingBall(bolingBall)
end

-- Configura novas bolas que forem adicionadas depois
CollectionService:GetInstanceAddedSignal("BolingBall"):Connect(setupBolingBall)]]