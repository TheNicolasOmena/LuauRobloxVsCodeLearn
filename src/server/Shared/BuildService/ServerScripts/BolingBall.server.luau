local CollectionService = game:GetService("CollectionService")
local bolingBalls = CollectionService:GetTagged("BolingBall")
local currBall = nil
local canTrigger = true
local debris = game:GetService("Debris")

-- Função independente que ativa uma bola específica
local function activateBolingBall(bolingBall)
	if not canTrigger then return end
	canTrigger = false
	local ball = bolingBall.Model.Ball
	local stopper = bolingBall.Model.Stopper

	currBall = ball:clone()
	currBall.Transparency = 0
	currBall.CanCollide = true
	currBall.Anchored = false
	currBall.Parent = bolingBall.Model

	stopper.CanCollide = false
	stopper.Transparency = 1
	task.wait(5)
	currBall:Destroy()
	currBall.Destroying:Connect(function()
	stopper.CanCollide = true
	stopper.Transparency = 0
	end)
	
	canTrigger = true
end

-- Função que ativa TODAS as bolas
local function activateAllBolingBalls()
	if not canTrigger then return end
	for _, bolingBall in CollectionService:GetTagged("BolingBall") do
		activateBolingBall(bolingBall)
	end
end

local function setupBolingBall(bolingBall, i)
	local button = bolingBall.Conjunto.Button
	local centralButton = bolingBall:FindFirstChild("CentralB")
	local ball = bolingBall.Model.Ball
	
	ball.Transparency = 1
	ball.CanCollide = false
	ball.Anchored = true
	print("Ball number:", i, "Setup complete for:", bolingBall.Name)


	-- Botão individual: ativa apenas esta bola
	button.ClickDetector.MouseClick:Connect(function()
		print("Button Clicked")
		activateBolingBall(bolingBall)
	end)

	-- Botão central (se existir): ativa todas as bolas
	if centralButton then
		centralButton.Button.ClickDetector.MouseClick:Connect(function()
			activateAllBolingBalls()
		end)
	end
end

-- Configura todas as bolas existentes
for i, bolingBall in ipairs(bolingBalls) do
	setupBolingBall(bolingBall, i)
	
end