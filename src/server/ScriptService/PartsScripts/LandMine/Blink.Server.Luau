local led = script.Parent
local rnd = Random.new()
local onPause = rnd:NextNumber(0.5, 1)
local offPause = rnd:NextNumber(1, 1.5)

while true do
	led.Material = Enum.Material.Neon
	led.BrickColor = BrickColor.new("Bright red")
	task.wait(onPause)
	led.Material = Enum.Material.SmoothPlastic
	led.BrickColor = BrickColor.Black()
	task.wait(offPause)
	
end
