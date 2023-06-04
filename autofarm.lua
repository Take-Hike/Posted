repeat
	wait()
until game:IsLoaded()

if game.CoreGui:FindFirstChild("FinityUI") then
    game.CoreGui["FinityUI"]:Destroy()
end

if not isfolder("TRXDENT") then
    makefolder("TRXDENT")
end

local filename = "TRXDENT/RobloxIsUnbreakable.lua"

function loadSettings()
	print("Loading Settings")
	local HttpService = game:GetService("HttpService");
	if (readfile and isfile and isfile(filename)) then
		getgenv().RIUAutofarm = HttpService:JSONDecode(readfile(filename));
	else
		print("File Not Found")	
	end
end

function saveSettings()
	local Logsz;
	local HttpService = game:GetService("HttpService");
	if (writefile) then
		Logsz = HttpService:JSONEncode(STa);
		writefile(filename, Logsz)
	else
		print("Windows Rejected Save Request")
	end
end

getgenv().RIUAutofarm = {
	itemfrm = false;
	autosell = false;
	sbrcollectpart = false;
	getstand = "";
	standstarted = false;
	autostopshiny = false;
	repeattp = false;
	allowwebhook = false;
	webhooklol = "";
}

local finityv2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenizAf4can/FinityV2/main/FinityV2"))()
local FinityWindow = finityv2.new("dark", "TRXDENT", false)
local FinityCredits = FinityWindow:Category("Credits")
local FinityC1 = FinityWindow:Category("RIU")
local FCreditsL1 = FinityCredits:Sector("Credits")

local player = game.Players.LocalPlayer
local lp = game:GetService("Players").LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")
local TweenService = game:GetService("TweenService")

local itemllist = {"Arrow","StoneMask","SteelBall","Locacaca","RequiemArrow"}
local sended = false

function sendwebbbhook(message)
	if RIUAutofarm.allowwebhook then
		local dt = DateTime.now();
		local webhookcheck =
		is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
		secure_load and "Sentinel" or
		KRNL_LOADED and "Krnl" or
		SONA_LOADED and "Sona" or
		"Kid with shit exploit"
		
		local url = RIUAutofarm.webhooklol
		local data = {
			["username"] = "TRXDENT",
		["content"] = message.."  Time "..dt:FormatLocalTime("LTS","en-us"),
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
		
		local headers = {
		["content-type"] = "application/json"
		}
		request = http_request or request or HttpPost or syn.request
		local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(abcdef)
	end
end

if game:GetService("Workspace"):FindFirstChild("CorpseParts") then
	local cpartlocation =  game:GetService("Workspace").CorpseParts.SpawnedCorpseParts
	local FC1L5 = FinityC1:Sector("Steel Ball Run")

	FC1L5:Cheat("Checkbox", "Auto Collect Corpse Parts", function(z)
		RIUAutofarm.sbrcollectpart = z
	end)

	FC1L5:Cheat("Dropdown", "Teleport To Corpse Part", function(z)
		local corpse = game:GetService("Workspace").CorpseParts.SpawnedCorpseParts:FindFirstChild(z)
		if corpse then
			root.CFrame = CFrame.new(corpse.Handle.Position)
		end
	end, {options = {"Left Arm of the Saint's Corpse","Left Leg of the Saint's Corpse","Ribcage of the Saint's Corpse","Right Arm of the Saint's Corpse","Right Leg of the Saint's Corpse","Skull of the Saint's Corpse","Heart of the Saint's Corpse","Eye of the Saint's Corpse"}})

	FC1L5:Cheat("Button", "Teleport To Your Horse", function(z)
		local horse = game.Workspace:FindFirstChild(player.Name.."'s Horse")
		if horse then
			root.CFrame = CFrame.new(horse.HumanoidRootPart.Position)
		end
	end)

	function collectcorpse()
		for i,v in pairs(cpartlocation:GetDescendants()) do
			if v:IsA("Part") or v:IsA("MeshPart") and v.Name == "Handle" then
				root.CFrame = CFrame.new(v.Position)
				fireproximityprompt(v.ProximityPrompt)
			end
		end
	end
	while true do
		if RIUAutofarm.sbrcollectpart then
			collectcorpse()
		end
	end
else
	local FC1L1 = FinityC1:Sector("Auto-Farm")
	local FC1L2 = FinityC1:Sector("Teleport")
	local FC1L3 = FinityC1:Sector("Settings")
	local FC1L4 = FinityC1:Sector("Misc")
	local itemlocation = game:GetService("Workspace").Map.Items.SpawnedItems

	-- Anti-AFK

	for i,v in pairs(getconnections(lp.Idled)) do 
		v:Disable()
	end

	-- Misc

	FC1L4:Cheat("Button","No-Clip (Item Farm)", function()
		loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Noclip")))()
	end)

	FC1L4:Cheat("Dropdown", "Buy Item", function(a)
		local A_1 = char
		local A_2 = a
		local A_3 = 1
		local Event = game:GetService("ReplicatedStorage").Events.ItemBuyEvent
		Event:FireServer(A_1, A_2, A_3)
	end, {options = {"Arrow","StoneMask","SteelBall","Locacaca","RequiemArrow"}})

	FC1L4:Cheat("Dropdown", "Sell", function(a)
		RIUAutofarm.autosellitem = a
		local A_1 = char
		local A_2 = "TRXDENT"
		local A_3 = a
		local A_4 = "Cash"
		local A_5 = 500
		local A_6 = 1
		local Event = game:GetService("ReplicatedStorage").Events.ItemSellEvent
		Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6)
	end, {options = {"","Arrow","StoneMask","SteelBall","Locacaca","RequiemArrow"}})

	FC1L4:Cheat("Checkbox", "Auto-Sell All Items", function(t)
		RIUAutofarm.autosell = t
	end)

	-- Item Farm
	FC1L1:Cheat("Checkbox", "Item Farm", function(t)
		RIUAutofarm.itemfrm = t
	end)
	--[[
		FC1L1:Cheat("Checkbox", "Stand Farm", function(t)
			RIUAutofarm.standstarted = t
		end)

		FC1L1:Cheat("Checkbox", "Auto Stop When Shiny", function(t)
			RIUAutofarm.autostopshiny = t
		end)

		FC1L1:Cheat("Dropdown", "Select Stand", function(t)
			RIUAutofarm.getstand = t
		end, {options = {"Gold Experience", "White Snake", "Star Platinum","The World","Killer Queen","Sticky Fingers","Hermit Purple","Metallica","Silver Chariot","King Crimson","Crazy Diamond"}})
	--]]
	-- Settings
	FC1L3:Cheat("Checkbox","Allow Webhook Sending", function(t)
		RIUAutofarm.allowwebhook = t
	end)

	FC1L3:Cheat("textbox","Enter Webhook", function(t)
		RIUAutofarm.webhooklol = t
	end, {placeholder = "Webhook URL"})

	FC1L3:Cheat("Button","Save Settings", function()
		saveSettings()
	end)

	FC1L3:Cheat("Button","Load Settings", function()
		loadSettings()
	end)

	function itemfrarm()
		if RIUAutofarm.itemfrm then
			local tweenInfo = TweenInfo.new(0.3)
			local goal = {}
			for _, a in pairs(itemlocation:GetChildren()) do
				if a:FindFirstChild("Handle") then
					goal.CFrame = CFrame.new(a.Handle.Position)
					local tween = TweenService:Create(root, tweenInfo, goal)
					tween:Play()
					tween.Completed:Connect(function()
						wait(0.05)
						fireproximityprompt(a.Handle.ProximityPrompt)
					end)
				elseif a.Name == "Coin" or a.Name == "Cash" then
					goal.CFrame = CFrame.new(a.Position)
					local tween = TweenService:Create(root, tweenInfo, goal)
					tween:Play()
					tween.Completed:Connect(function()
						wait(0.05)
						fireproximityprompt(a.ProximityPrompt)
					end)
				end
				if not RIUAutofarm.itemfrm then return end
			end
		end
	end

	--[[
		function standfarmu()
			if RIUAutofarm.standstarted then
				local standattribute = tostring(game:GetService("Players").LocalPlayer.Character.PlayerStatistics:GetAttribute("Stand"))
				local standskinattribute = tostring(game:GetService("Players").LocalPlayer.Character.PlayerStatistics:GetAttribute("StandSkin"))
				local cashattribute = tonumber(game:GetService("Players").LocalPlayer.Character.PlayerStatistics:GetAttribute("Cash"))
				local arrowattribute = game:GetService("Players").LocalPlayer.Character.PlayerStatistics.Inventory:GetAttributes("Arrow")

				if standattribute ~= RIUAutofarm.getstand then
					if arrowattribute ~= "0" and cashattribute >= 1000 then
						RIUAutofarm.standstarted = false
						local whitesnakenpc = game:GetService("Workspace").NPCs.Friendly["Whitesnake #3 (NPC)"]
						local tweenInfo = TweenInfo.new(0.8)
						local goal = {}
						goal.CFrame = CFrame.new(whitesnakenpc:FindFirstChild("HumanoidRootPart").Position)

						local tween = TweenService:Create(root, tweenInfo, goal)
						tween:Play()
						tween.Completed:Connect(function()
							wait(0.2)
							fireproximityprompt(whitesnakenpc.Head.Head.ProximityPrompt)
							wait(2)
							for i,v in pairs(lp.PlayerGui:GetDescendants()) do
								if v:IsA("Button") and v.Name == "RemoveStand" then
									for i,v in pairs(getconnections(v.MouseButton1Click)) do
										v:Fire()
									end
									wait(0.2)
									for a,z in pairs(whitesnakenpc:GetDescendants()) do
										if z.Name == "Confirm" and z.Parent.Name == "StandConfirmation" then
											for i,v in pairs(getconnections(z.MouseButton1Click)) do
												v:Fire()
											end
										end
									end
								end
							end

							wait(0.5)

							local A_1 = char
							local A_2 = "Arrow"
							local A_3 = "Arrow"
							local Event = game:GetService("ReplicatedStorage").Events.ItemUseEvent
							Event:FireServer(A_1, A_2, A_3)

							wait(5)
							RIUAutofarm.standstarted = false
						end)
					elseif arrowattribute == 0 and cashattribute >= 100 then
						sendwebbbhook("Not Enough Arrow! Buying Some Arrow")
						local A_1 = char
						local A_2 = "Arrow"
						local A_3 = 1
						local Event = game:GetService("ReplicatedStorage").Events.ItemBuyEvent
						Event:FireServer(A_1, A_2, A_3)
					elseif arrowattribute == 0 and cashattribute < 1000 then
						RIUAutofarm.standstarted = false
						sendwebbbhook("Out Of Arrow And Money! | Disabled Stand Farm!")
						sendwebbbhook("Stand "..standattribute)
					end
					
				elseif standattribute == RIUAutofarm.getstand then
					RIUAutofarm.standstarted = false
					sendwebbbhook("You Got Selected Stand Bro | Disabled Stand Farm!")
					sendwebbbhook("Stand "..standattribute)
				elseif standskinattribute ~= standattribute.." (Default)" then
					RIUAutofarm.standstarted = false
					sendwebbbhook("Shiny Stand Les Go, You're lucky bro | Disabled Stand Farm!")
					sendwebbbhook("Stand "..standattribute)
					sendwebbbhook("Stand Skin "..standskinattribute)
				end
			end
		end
	--]]

	

	spawn(function()
		while true do wait()
			if RIUAutofarm.autosell then
				for i,v in pairs(itemllist) do
					local A_1 = char
					local A_2 = "TRXDENT"
					local A_3 = v
					local A_4 = "Cash"
					local A_5 = 500
					local A_6 = 1
					local Event = game:GetService("ReplicatedStorage").Events.ItemSellEvent
					Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6)
				end
			end
		end
	end)

	while true do wait()
		--standfarmu()
		itemfrarm()
	end
end

-- Credits
FCreditsL1:Cheat("Label","made by "..DCAD, function() end)
FCreditsL1:Cheat("Button", "Copy Discord Server Link", function()
	setclipboard("https://discord.gg/GgrQBzA3Z9")
end)