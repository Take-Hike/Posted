repeat
    wait()
until game:IsLoaded()

if game.CoreGui:FindFirstChild("FinityUI") then
    game.CoreGui["FinityUI"]:Destroy()
end

-- Global Environments

getgenv().snowshovelingautofarm = {
    Enabled = false;
    Type = ""; -- Vehicle or Shoveling
    SelectedTool = "Metal Shovel";
    RepeatTime = 30;
    AutoTask = false;
    TaskDifficulty = "Easy"
}

if not isfolder("TRXDENT") then
    makefolder("TRXDENT")
end

local filename = "TRXDENT/SnowShovelingSimulator.lua"

function loadSettings()
    print("Loading Settings")
    local HttpService = game:GetService("HttpService");
    if (readfile and isfile and isfile(filename)) then
        getgenv().snowshovelingautofarm = HttpService:JSONDecode(readfile(filename));
    else
        print("File Not Found")	
    end
end

function saveSettings()
    local Logsz;
    local HttpService = game:GetService("HttpService");
    if (writefile) then
        Logsz = HttpService:JSONEncode(snowshovelingautofarm);
        writefile(filename, Logsz)
    else
        print("Windows Rejected Save Request")
    end
end

local finityv2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenizAf4can/FinityV2/main/FinityV2"))()
local finitymain = finityv2.new("dark", "TRXDENT", false)
local FinityCredits = finitymain:Category("Credits")
local FinityC1 = finitymain:Category("SnowSS")
local FCreditsL1 = FinityCredits:Sector("Credits")
local FC1L1 = FinityC1:Sector("Auto-Farm")
local FC1L2 = FinityC1:Sector("Teleport")
local FC1L3 = FinityC1:Sector("Settings")
local FC1L4 = FinityC1:Sector("Misc")

-- Credits
FCreditsL1:Cheat("Label","made by "..DCAD, function() end)
FCreditsL1:Cheat("Button", "Copy Discord Server Link", function()
    setclipboard("https://discord.gg/GgrQBzA3Z9")
end)

local player = game.Players.LocalPlayer
local lp = game:GetService("Players").LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local moneycount = lp.leaderstats.Money.Value

-- Settings

FC1L3:Cheat("Button","Save Settings", function()
    saveSettings()
end)

FC1L3:Cheat("Button","Load Settings", function()
    loadSettings()
end)

-- Anti-AFK

for i,v in pairs(getconnections(lp.Idled)) do 
    v:Disable()
end

-- Auto-Farm
FC1L1:Cheat("checkbox", "Enable / Disable", function(a)
    snowshovelingautofarm.Enabled = a
end)

FC1L1:Cheat("checkbox", "Auto Task", function(a)
    snowshovelingautofarm.AutoTask = a
end)

FC1L1:Cheat("dropdown", "Task Difficulty", function(a)
    snowshovelingautofarm.TaskDifficulty = a
end, {options = {"Easy", "Normal", "Hard"}, placeholder = "Easy"})

-- Misc

FC1L4:Cheat("TextBox","Fast Tool (OP)", function(z)
    a = require(game:GetService("ReplicatedStorage").Modules.Database.Tools)

    a[tostring(z)].Speed = 0
end, {placeholder = "Enter Tool Name"})

FC1L4:Cheat("Slider", "WalkSpeed", function(a)
    hum.WalkSpeed = tonumber(a)
end, {suffix = " Speed", min = "16", max = "150", default = "16"})

local args = {
    [1] = "TakeItem",
    [2] = workspace.Regions.Winterville.Shops.JimsTools.ShopItems:FindFirstChild("1")
}
game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))

function farms()
    if snowshovelingautofarm.AutoTask then
        local args = {
            [1] = "StartTask",
            [2] = snowshovelingautofarm.TaskDifficulty
        }
        game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
        local collectargs = {
            [1] = "ClaimTask"
        }
        game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(collectargs))
    end
    if snowshovelingautofarm.Enabled then
        if not char:FindFirstChild("Plastic Shovel") then
            hum:EquipTool(lp.Backpack["Plastic Shovel"])
        end
        local oldmoney = lp.leaderstats.Money.Value
        local args = {
            [1] = "Shovel",
            [2] = lp.Character:FindFirstChild("Plastic Shovel"),
            [3] = {
                [1] = workspace.Regions.Winterville.Tiles.Snow
            }
        }
        cw = 0
        repeat
            wait()
            game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
            cw = cw + 1
        until cw == snowshovelingautofarm.RepeatTime

        root.CFrame = CFrame.new(488.0330810546875, 15.643982887268066, -64.61615753173828)

        local sellargs = {
            [1] = "SellSnow",
            [2] = "Frosty"
        }

        game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(sellargs))

        wait(0.1)

        local mone = lp.leaderstats.Money.Value
        if mone == oldmoney then
            workspace.Regions.Winterville.Tiles.Snow:Destroy()
        end
    end
end

while true do wait()
    farms()
end