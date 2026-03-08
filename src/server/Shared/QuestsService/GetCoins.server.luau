local RS = game:GetService("ReplicatedStorage")
local SSS = game:GetService("ServerScriptService")
local moduleLearn = SSS.Server.Shared.QuestsService.moduleLearn
--local ReplicatedQuests = RS.Replicated.Shared.QuestsService
local EconomyModule = require(moduleLearn)

function onQuestCompleted(player: Player)
	--Check Player's Quest Status
	local questActive = true -- Placeholder for actual quest completion logic
	--Check if the player has completed the quest
	local questCompleted = true -- Placeholder for actual quest completion logic
	--Check if the player has leaderstats
	local leaderstats = player:FindFirstChild("leaderstats")

	if questActive and questCompleted and leaderstats then
		EconomyModule.AddCoins(player, 10) -- Award 10 coins for completing the quest
	end
end

RS.Remotes.GetCoins.OnServerEvent:Connect(onQuestCompleted)
