getgenv().Settings = {

	closestplayer = "";
	Turn = false;
	
}

local camera = game:GetService("Workspace").Camera
local UIS = game:GetService("UserInputService")
local ts = game:GetService("TweenService")

function GetPlayer()
	local closestDistance = math.huge
	local closestPlayer = nil
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team and v.Character ~= nil then
			local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				closestDistance = distance
				closestPlayer = v
				Settings.closestplayer = v.Name
			end
		end
	end
end

UIS.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		Settings.Turn = true
		while wait(0) do
			GetPlayer()
			local findpl = game.Players:FindFirstChild(Settings.closestplayer)
			if findpl.Character ~= nil then
				local goal = {}
				goal.CFrame = CFrame.new(camera.CFrame.Position, findpl.Character.Head.Position)
				local tweeninfo = TweenInfo.new(0.05)

				local tween = ts:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweeninfo, goal)
				camera.CFrame = CFrame.new(camera.CFrame.Position, findpl.Character.Head.Position)
			end
			if Settings.Turn == false then return end
		end
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		Settings.Turn = false
	end
end)