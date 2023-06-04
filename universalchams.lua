function cresp(target, color)
    local highlight = Instance.new("Highlight", target)
    highlight.Name = "LickMyItchyBalls"
    highlight.FillTransparency = 1
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillColor = color
    highlight.OutlineColor = color
    highlight.OutlineTransparency = 0
    highlight.Enabled = true
end
    
while true do wait(1)
	for i,v in pairs(game.Players:GetChildren()) do
		if TeamCheck then
			if v.Team ~= game.Players.LocalPlayer.Team then
				cresp(v.Character, Color3.fromRGB(255,0,0))
			else
				cresp(v.Character, Color3.fromRGB(255,255,255))
			end
		else
			cresp(v.Character, Color3.fromRGB(255,255,255))
		end
	end
end