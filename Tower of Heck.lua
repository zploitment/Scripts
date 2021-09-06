local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
mouse.KeyDown:Connect(function(key)
	if key == "x" then
		local p = Instance.new("Part")
		p.Parent = workspace
		p.Name = "blocky"
		p.Size = Vector3.new(4, 0.1, 3)
		local char = player.Character or player.CharacterAdded:Wait()
		p.Position = char.HumanoidRootPart.Position
		p.Position = Vector3.new(
			p.Position.X,
			p.Position.Y-2,
			p.Position.Z
		)
		local Colors = {
			Color3.new(0.333333, 0.666667, 0),
			Color3.new(0.666667, 0, 0),
			Color3.new(0.0196078, 1, 0.937255),
			Color3.new(1, 0, 1),
			Color3.new(0.666667, 1, 0),
			Color3.new(0.333333, 0, 1),
			Color3.new(0.666667, 0.666667, 0),
			Color3.new(0.666667, 1, 1),
			Color3.new(1, 0.333333, 0),
			Color3.new(0, 0, 1),
			Color3.new(1, 1, 1),
			Color3.new(0,0,0),
			Color3.new(0.666667, 0.333333, 1),
			Color3.new(0, 1, 0.0313725),
			Color3.new(1, 0.666667, 1)
		}
		p.Color = Colors[math.random(1,15)]
		p.Transparency = .5
		p.Anchored = true
		wait(25 )
		p:Destroy()
	end
end)
