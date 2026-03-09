--[[local soundF = game:GetService("ReplicatedStorage").Replicated.ReplicatedStorage.Buildings.Audios
local tpSound = soundF.tp01Sound

local tpB = script.Parent.BlueTP.BlueTP.TeleportPart0
local tpG = script.Parent.GreenTP.GreenTP.TeleportPart0
local tpR = script.Parent.RedTP.RedTP.TeleportPart0

local dtB = script.Parent.BlueDT.BlueDT.Neon
local dtR = script.Parent.RedDT.RedDT.Neon
local dtG = script.Parent.GreenDT.GreenDT.Neon
local players = game:GetService("Players")

local canTeleport = true

local function translocateG(otherPart)
	local hrp = otherPart.Parent:FindFirstChild("HumanoidRootPart")
	if hrp then
		local player = players:GetPlayerFromCharacter(otherPart.Parent)
		if player then
			local canTeleport = false
			task.wait(1)
			
			tpSound:Play()
			task.wait(0.5)
			hrp.CFrame = CFrame.new(dtG.Position + Vector3.new(0, 4,0))
			local canTeleport = true
		end
	end
	
end
local function translocateB(otherPart)
	local hrp = otherPart.Parent:FindFirstChild("HumanoidRootPart")
	if hrp then
		local player = players:GetPlayerFromCharacter(otherPart.Parent)
		if player then
			local canTeleport = false
			task.wait(1)
			tpSound:Play()
			task.wait(0.5)
			hrp.CFrame = CFrame.new(dtB.Position ) + Vector3.new(0, 4,0)
			local canTeleport = true
		end
	end

end
local function translocateR(otherPart)
	local hrp = otherPart.Parent:FindFirstChild("HumanoidRootPart")
	if hrp then
		local player = players:GetPlayerFromCharacter(otherPart.Parent)
		if player then
			local canTeleport = false
			task.wait(1)
			tpSound:Play()
			task.wait(0.5)
			hrp.CFrame = CFrame.new(dtR.Position ) + Vector3.new(0, 4,0)
			local canTeleport = true
		end
	end

end

tpB.Touched:Connect(translocateB)
tpR.Touched:Connect(translocateR)
tpG.Touched:Connect(translocateG)]]