local http = game:GetService("HttpService")
local link = game:HttpGet("https://raw.githubusercontent.com/Take-Hike/RandomThings/main/WHL2142948266")
local data = http:JSONDecode(link)
local pst = {
    ProjectSlayers = false
}
for i,v in pairs(data) do
    if v["ProjectSlayers"] ~= nil and i == game.Players.LocalPlayer.Name then
        pst.ProjectSlayers = true
    end
end

if fastload ~= nil then
	if fastload then
		if game.PlaceId == 11468075017 or game.PlaceId == 11468159863 or game.PlaceId == 6152116144 or game.PlaceId == 5956785391 then
			if pst.ProjectSlayers then
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Project_Slayers")))()
			end
		end
	else
		if not isfolder("TRXDENT") then
			makefolder("TRXDENT")
		end
		
		getgenv().DCAD = "Dxniz#1404";
		getgenv().SecureMode = true
		
		local tpserv = game:GetService("TeleportService")
		
		local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
		
		local Window = Rayfield:CreateWindow({
			Name = "Loader",
			LoadingTitle = "TRXDENT Loader",
			LoadingSubtitle = "by "..DCAD,
			Discord = {
			   Enabled = true,
			   Invite = "GgrQBzA3Z9", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
			   RememberJoins = false -- Set this to false to make them join the discord every time they load it up
			},
			KeySystem = false, -- Set this to true to use our key system
			KeySettings = {
			   Title = "TRXDENT Loader",
			   Subtitle = "Key System",
			   Note = "Join the discord (discord.gg/GgrQBzA3Z9)",
			   FileName = "TRXDENT/Key.lua",
			   SaveKey = true,
			   GrabKeyFromSite = false,
			   Key = "goatpiece"
			}
		})
		
		local Tab = Window:CreateTab("V1 Scripts", 4483362458) -- Title, Image
		local Tabv2 = Window:CreateTab("V2 Scripts", 4483362458)
		local PreTab = Window:CreateTab("Support", 4483362458) -- Title, Image
		
		local BuyPre = PreTab:CreateButton({
		Name = "Support Me",
			Callback = function()
				setclipboard("discord.gg/GgrQBzA3Z9")
				Rayfield:Notify({
					Title = "Premium",
					Content = "Teleporting to the game!",
					Duration = 10,
					Image = 4483362458,
					Actions = { -- Notification Buttons
					   Ignore = {
						  Name = "Okay!",
						  Callback = function()
							tpserv:Teleport(12689917226)
					   end
					},
				 },
				 })
			end,
		})
		
		-- Murder Mystery 2
		local mm2 = Tab:CreateSection("Murder Mystery 2")
		
		local mm1 = Tab:CreateButton({
			Name = "MM2 Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/MM2")))()
			end,
		})
		
		local tp1 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("142823291")
			end,
		})
		
		local roghoul = Tab:CreateSection("Ro-Ghoul")
		
		local rg1 = Tab:CreateButton({
			Name = "Ro-Ghoul Look Player's Stats",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Ro-Ghoul-Look")))()
			end,
		})
		
		local rg2 = Tab:CreateButton({
			Name = "Ro-Ghoul Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Ro-Ghoul-Autofarm")))()
			end,
		})
		
		local tp2 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("914010731")
			end,
		})
		
		-- Dragon Ball Final Remastered
		local DBFR = Tab:CreateSection("Dragon Ball Final Remastered")
		
		local dbf1 = Tab:CreateButton({
			Name = "DBFR Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/DragonBallFinalRemastered")))()
			end,
		})
		
		local tp3 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("298400657")
			end,
		})
		
		-- A Universal Time
		
		local AUT = Tab:CreateSection("A Universal Time")
		
		local aut1 = Tab:CreateButton({
			Name = "A Universal Time Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/AUniversalTime")))()
			end,
		})
		
		local tp4 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("5130598377")
			end,
		})
		
		-- Natural Disaster Survival
		
		local NDS = Tab:CreateSection("Natural Disaster Survival")
		
		local nds1 = Tab:CreateButton({
			Name = "Natural Disaster Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/NaturalDisasterSurvival")))()
			end,
		})
		
		local tp5 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("189707")
			end,
		})
		
		-- Evade
		
		local Evade = Tab:CreateSection("Evade")
		
		local evd1 = Tab:CreateButton({
			Name = "Evade Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Evade")))()
			end,
		})
		
		local tp6 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("9872472334")
			end,
		})
		
		-- Retail Tycoon 2
		
		local RT2 = Tab:CreateSection("Retail Tycoon 2")
		
		local rt1 = Tab:CreateButton({
			Name = "Retail Tycoon 2 Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/RetailTycoon2")))()
			end,
		})
		
		local tp7 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("5865858426")
			end,
		})
		
		-- Anime Evolution Simulator
		
		local AES = Tab:CreateSection("Anime Evolution Simulator")
		
		local aes1 = Tab:CreateButton({
			Name = "Anime Evolution Sim Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/AnimeEvolutionSimulator")))()
			end,
		})
		
		local tp8 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("10723695195")
			end,
		})
		
		-- Roblox Is Unbreakable
		
		local RIU = Tab:CreateSection("Roblox Is Unbreakable")
		
		local riu1 = Tab:CreateButton({
			Name = "Roblox Is Unbreakable Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/RobloxIsUnbreakable")))()
			end,
		})
		
		local tp9 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("6298464951")
			end,
		})
		
		-- MinerShaft
		
		local MinerShaft = Tab:CreateSection("MinerShaft")
		
		local msh1 = Tab:CreateButton({
			Name = "MinerShaft Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/MinerShaft")))()
			end,
		})
		
		local tp10 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("11270995869")
			end,
		})
		
		-- Snow Shoveling Simulator
		
		local SSS = Tab:CreateSection("Snow Shoveling Sim")
		
		local msh1 = Tab:CreateButton({
			Name = "Snow Shoveling Sim Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/SnowShovelingSimulator")))()
			end,
		})
		
		local tp10 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("1252559098")
			end,
		})
		-- Steep Steps
		
		local SteepSteps = Tab:CreateSection("Steep Steps")
		
		local msh1 = Tab:CreateButton({
			Name = "Steep Steps Gui",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/SteepSteps")))()
			end,
		})
		
		local tp10 = Tab:CreateButton({
			Name = "Teleport",
			Callback = function()
				tpserv:Teleport("11606818992")
			end,
		})
		
		-- Project Slayers
		
		Tabv2:CreateSection("Project Slayers")
		
		Tabv2:CreateButton({
			Name = "Project Slayers",
			Callback = function()
				if pst.ProjectSlayers then
					loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Project_Slayers")))()
				end
			end,
		})
		
		-- Esp
		
		Tabv2:CreateSection("Universal Esp")
		
		Tabv2:CreateButton({
			Name = "Esp",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Premium%20Esp")))()
			end
		})
		
		-- Other Scripts
		
		local Other = Tab:CreateSection("Other Script's")
		
		local other1 = Tab:CreateButton({
			Name = "RemoteSpy",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/RemoteSpy")))()
			end,
		})
		
		local other2 = Tab:CreateButton({
			Name = "Smooth Aimlock",
			Callback = function()
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/TRXDENT%20Aimlock")))()
			end,
		})
		
	end
else
	if not isfolder("TRXDENT") then
		makefolder("TRXDENT")
	end
	
	getgenv().DCAD = "Dxniz#1404";
	getgenv().SecureMode = true
	
	local tpserv = game:GetService("TeleportService")
	
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
	
	local Window = Rayfield:CreateWindow({
		Name = "Loader",
		LoadingTitle = "TRXDENT Loader",
		LoadingSubtitle = "by "..DCAD,
		Discord = {
		   Enabled = true,
		   Invite = "GgrQBzA3Z9", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
		   RememberJoins = false -- Set this to false to make them join the discord every time they load it up
		},
		KeySystem = false, -- Set this to true to use our key system
		KeySettings = {
		   Title = "TRXDENT Loader",
		   Subtitle = "Key System",
		   Note = "Join the discord (discord.gg/GgrQBzA3Z9)",
		   FileName = "TRXDENT/Key.lua",
		   SaveKey = true,
		   GrabKeyFromSite = false,
		   Key = "goatpiece"
		}
	})
	
	local Tab = Window:CreateTab("V1 Scripts", 4483362458) -- Title, Image
	local Tabv2 = Window:CreateTab("V2 Scripts", 4483362458)
	local PreTab = Window:CreateTab("Support", 4483362458) -- Title, Image
	
	local BuyPre = PreTab:CreateButton({
	Name = "Support Me",
		Callback = function()
			setclipboard("discord.gg/GgrQBzA3Z9")
			Rayfield:Notify({
				Title = "Premium",
				Content = "Teleporting to the game!",
				Duration = 10,
				Image = 4483362458,
				Actions = { -- Notification Buttons
				   Ignore = {
					  Name = "Okay!",
					  Callback = function()
						tpserv:Teleport(12689917226)
				   end
				},
			 },
			 })
		end,
	})
	
	-- Murder Mystery 2
	local mm2 = Tab:CreateSection("Murder Mystery 2")
	
	local mm1 = Tab:CreateButton({
		Name = "MM2 Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/MM2")))()
		end,
	})
	
	local tp1 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("142823291")
		end,
	})
	
	local roghoul = Tab:CreateSection("Ro-Ghoul")
	
	local rg1 = Tab:CreateButton({
		Name = "Ro-Ghoul Look Player's Stats",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Ro-Ghoul-Look")))()
		end,
	})
	
	local rg2 = Tab:CreateButton({
		Name = "Ro-Ghoul Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Ro-Ghoul-Autofarm")))()
		end,
	})
	
	local tp2 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("914010731")
		end,
	})
	
	-- Dragon Ball Final Remastered
	local DBFR = Tab:CreateSection("Dragon Ball Final Remastered")
	
	local dbf1 = Tab:CreateButton({
		Name = "DBFR Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/DragonBallFinalRemastered")))()
		end,
	})
	
	local tp3 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("298400657")
		end,
	})
	
	-- A Universal Time
	
	local AUT = Tab:CreateSection("A Universal Time")
	
	local aut1 = Tab:CreateButton({
		Name = "A Universal Time Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/AUniversalTime")))()
		end,
	})
	
	local tp4 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("5130598377")
		end,
	})
	
	-- Natural Disaster Survival
	
	local NDS = Tab:CreateSection("Natural Disaster Survival")
	
	local nds1 = Tab:CreateButton({
		Name = "Natural Disaster Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/NaturalDisasterSurvival")))()
		end,
	})
	
	local tp5 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("189707")
		end,
	})
	
	-- Evade
	
	local Evade = Tab:CreateSection("Evade")
	
	local evd1 = Tab:CreateButton({
		Name = "Evade Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Evade")))()
		end,
	})
	
	local tp6 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("9872472334")
		end,
	})
	
	-- Retail Tycoon 2
	
	local RT2 = Tab:CreateSection("Retail Tycoon 2")
	
	local rt1 = Tab:CreateButton({
		Name = "Retail Tycoon 2 Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/RetailTycoon2")))()
		end,
	})
	
	local tp7 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("5865858426")
		end,
	})
	
	-- Anime Evolution Simulator
	
	local AES = Tab:CreateSection("Anime Evolution Simulator")
	
	local aes1 = Tab:CreateButton({
		Name = "Anime Evolution Sim Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/AnimeEvolutionSimulator")))()
		end,
	})
	
	local tp8 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("10723695195")
		end,
	})
	
	-- Roblox Is Unbreakable
	
	local RIU = Tab:CreateSection("Roblox Is Unbreakable")
	
	local riu1 = Tab:CreateButton({
		Name = "Roblox Is Unbreakable Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/RobloxIsUnbreakable")))()
		end,
	})
	
	local tp9 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("6298464951")
		end,
	})
	
	-- MinerShaft
	
	local MinerShaft = Tab:CreateSection("MinerShaft")
	
	local msh1 = Tab:CreateButton({
		Name = "MinerShaft Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/MinerShaft")))()
		end,
	})
	
	local tp10 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("11270995869")
		end,
	})
	
	-- Snow Shoveling Simulator
	
	local SSS = Tab:CreateSection("Snow Shoveling Sim")
	
	local msh1 = Tab:CreateButton({
		Name = "Snow Shoveling Sim Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/SnowShovelingSimulator")))()
		end,
	})
	
	local tp10 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("1252559098")
		end,
	})
	-- Steep Steps
	
	local SteepSteps = Tab:CreateSection("Steep Steps")
	
	local msh1 = Tab:CreateButton({
		Name = "Steep Steps Gui",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/SteepSteps")))()
		end,
	})
	
	local tp10 = Tab:CreateButton({
		Name = "Teleport",
		Callback = function()
			tpserv:Teleport("11606818992")
		end,
	})
	
	-- Project Slayers
	
	Tabv2:CreateSection("Project Slayers")
	
	Tabv2:CreateButton({
		Name = "Project Slayers",
		Callback = function()
			if pst.ProjectSlayers then
				loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Project_Slayers")))()
			end
		end,
	})
	
	-- Esp
	
	Tabv2:CreateSection("Universal Esp")
	
	Tabv2:CreateButton({
		Name = "Esp",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/Premium%20Esp")))()
		end
	})
	
	-- Other Scripts
	
	local Other = Tab:CreateSection("Other Script's")
	
	local other1 = Tab:CreateButton({
		Name = "RemoteSpy",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/RemoteSpy")))()
		end,
	})
	
	local other2 = Tab:CreateButton({
		Name = "Smooth Aimlock",
		Callback = function()
			loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/DxnizA/TRXDENT/main/TRXDENT%20Aimlock")))()
		end,
	})
	
end