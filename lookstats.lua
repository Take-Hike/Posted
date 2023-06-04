getgenv().Stats = {
	playername = "";
	level = 0;
	team = "";
	nickname = "";
	kagunequinque = "";
	kagunequinqueslot2 = "";
	kagunequinqueslot3 = "";
	primarycolor = "";
	secondarycolor = "";
	mask = "";
	yen = 0;
	rc = 0;
	reputation = 0;
	clan = "";
	nishiki = 0;
	amon = 0;
	yoshimura = 0;
	gyasac = 0;
    yen2 = false;
    exp2 = false;
    rep2 = false;
    trainhalf = false;
    infredo = false;
    special = "";
    specialstage = 0;
    quinx = "";
    quinxframe = 0;
    spawnlocation = "";
    colorcredits = 0;
    maskcredits = 0;
    physical = 0;
    physicalinc = 0;
    weaponstat = 0;
    weaponstatinc = 0;
    speed = 0;
    speedinc = 0;
    durability = 0;
    durabilityinc = 0;
    focus = 0;
};

local finityv2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenizAf4can/FinityV2/main/FinityV2"))()
local finitymain = finityv2.new("dark", "TRXDENT", true)
local FinityCredits = finitymain:Category("Credits")
local FinityC1 = finitymain:Category("Ro-Ghoul")
local FC1L1 = FinityC1:Sector("Player Name")
local FC1L2 = FinityC1:Sector("Stats")
local FC1L3 = FinityC1:Sector("Boss Kill's")
local FC1L4 = FinityC1:Sector("Skill Points")
local FC1L5 = FinityC1:Sector("Gamepass Info")
local FC1L6 = FinityC1:Sector("Misc")
local FCreditsL1 = FinityCredits:Sector("Credits")

-- Credits
FCreditsL1:Cheat("Label","made by "..DCAD, function() end)
FCreditsL1:Cheat("Button", "Copy Discord Server Link", function()
	setclipboard("https://discord.gg/GgrQBzA3Z9")
end)

FC1L1:Cheat("TextBox","Enter Player Name",function(Value)
    Stats.playername = Value
end, {placeholder = "PlayerName"})


-- Stats UI

local levelui = FC1L2:Cheat("Label","Level : "..tostring(Stats.level))
local teamui = FC1L2:Cheat("Label","Team : "..tostring(Stats.team))
local nicknameui = FC1L2:Cheat("Label","Nickname : "..tostring(Stats.nickname))
local kagquiui = FC1L2:Cheat("Label","Kagune / Quinque : "..tostring(Stats.kagunequinque))
local kagquislot2ui = FC1L2:Cheat("Label","Kagune / Quinque Slot 2 : "..tostring(Stats.kagunequinqueslot2))
local kagquislot3ui = FC1L2:Cheat("Label","Kagune / Quinque Slot 3 : "..tostring(Stats.kagunequinqueslot3))
local quinxui = FC1L2:Cheat("Label","Quinx : "..tostring(Stats.quinx))
local quinxframeui = FC1L2:Cheat("Label","Current Frame : "..tostring(Stats.quinxframe))
local specialui = FC1L2:Cheat("Label","Special : "..tostring(Stats.special))
local specialstageui = FC1L2:Cheat("Label","Current Stage : "..tostring(Stats.specialstage))
local primarycolorui = FC1L2:Cheat("Label","Primary Color : "..tostring(Stats.primarycolor))
local secondarycolorui = FC1L2:Cheat("Label","Secondary Color : "..tostring(Stats.secondarycolor))
local maskui = FC1L2:Cheat("Label","Mask : "..tostring(Stats.mask))
local yenui = FC1L2:Cheat("Label","Yen : "..tostring(Stats.yen))
local rcui = FC1L2:Cheat("Label","RC : "..tostring(Stats.rc))
local reputationui = FC1L2:Cheat("Label","Reputation : "..tostring(Stats.reputation))
local clanui = FC1L2:Cheat("Label","Clan : "..tostring(Stats.clan))

-- Boss Kill's UI

local nishikiui = FC1L3:Cheat("Label","Nishiki Nishio : "..tostring(Stats.nishiki))
local amonui = FC1L3:Cheat("Label","Koutarou Amon : "..tostring(Stats.amon))
local yoshimuraui = FC1L3:Cheat("Label","Eto Yoshimura : "..tostring(Stats.yoshimura))

-- Skill Points UI

local physicalui = FC1L4:Cheat("Label","Physical : "..tostring(Stats.physical).." + "..tostring(Stats.physicalinc))
local weaponstatui = FC1L4:Cheat("Label","Kagune Quinque Stat : "..tostring(Stats.weaponstat).." + "..tostring(Stats.weaponstatinc))
local speedui = FC1L4:Cheat("Label","Speed : "..tostring(Stats.speed).." + "..tostring(Stats.speedinc))
local durabilityui = FC1L4:Cheat("Label","Durability : "..tostring(Stats.durability).." + "..tostring(Stats.durabilityinc))
local focusui = FC1L4:Cheat("Label","Focus : "..tostring(Stats.focus))

-- Gamepass UI

local yen2ui = FC1L5:Cheat("Label","2x Yen : "..tostring(Stats.yen2))
local exp2ui = FC1L5:Cheat("Label","2x Exp : "..tostring(Stats.exp2))
local rep2ui = FC1L5:Cheat("Label","2x Reputation : "..tostring(Stats.rep2))
local trainhalfui = FC1L5:Cheat("Label","Train Half : "..tostring(Stats.trainhalf))
local infredoui = FC1L5:Cheat("Label","Inf Redo Focus : "..tostring(Stats.infredo))

-- Misc UI

local gyasacui = FC1L6:Cheat("Label","Gya Sac's : "..tostring(Stats.gyasac))
local spawnlocationui = FC1L6:Cheat("Label","Spawn Location : "..tostring(Stats.spawnlocation))

-- Başlama

function SetValu()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name == Stats.playername then
            local pf = v.PlayerFolder
            Stats.level = pf.Stats.Level.Value
            Stats.team = pf.Customization.Team.Value
            Stats.nickname = pf.Customization.Nickname.Value
            Stats.kagunequinque = pf.Customization.Weapon.Value
            Stats.primarycolor = pf.Customization.WeaponPrimaryColor.Value
            Stats.secondarycolor = pf.Customization.WeaponSecondaryColor.Value
            Stats.mask = pf.Customization.Mask.Value
            Stats.yen = pf.Stats.Yen.Value
            Stats.rc = pf.Stats.RC.Value
            Stats.reputation = pf.Stats.Reputation.Value
            Stats.clan = pf.Settings.Faction.Value
            Stats.amon = pf.BossKills["Koutarou Amon"].Value
            Stats.nishiki = pf.BossKills["Nishiki Nishio"].Value
            Stats.yoshimura = pf.BossKills["Eto Yoshimura"].Value
            Stats.gyasac = pf.Inventory.GyaSacs.Value
            Stats.kagunequinqueslot2 = pf.WepSlots.WepSlot1.Value
            Stats.kagunequinqueslot3 = pf.WepSlots.WepSlot2.Value
            Stats.yen2 = pf.Gamepass.Yen2.Value
            Stats.exp2 = pf.Gamepass.Exp2.Value
            Stats.rep2 = pf.Gamepass.Rep2.Value
            Stats.trainhalf = pf.Gamepass.TrainHalf.Value
            Stats.infredo = pf.Gamepass.InfRedo.Value
            Stats.special = pf.SpecialStat.Special.Value
            Stats.specialstage = pf.SpecialStat.CurStage.Value
            Stats.quinx = pf.QuinxStat.Quinx.Value
            Stats.quinxframe = pf.QuinxStat.CurFrame.Value
            Stats.spawnlocation = pf.Settings.SpawnLocation.Value
            Stats.colorcredits = pf.Settings.ColorCredits.Value
            Stats.maskcredits = pf.Settings.MaskCredits.Value
            Stats.physical = pf.Stats.Physical.Value
            Stats.physicalinc = pf.Stats.Physical.Inc.Value
            Stats.weaponstat = pf.Stats.Weapon.Value
            Stats.weaponstatinc = pf.Stats.Weapon.Inc.Value
            Stats.speed = pf.Stats.Speed.Value
            Stats.speedinc = pf.Stats.Speed.Inc.Value
            Stats.durability = pf.Stats.Durability.Value
            Stats.durabilityinc = pf.Stats.Durability.Inc.Value
            Stats.focus = pf.Stats.Focus.Value
        end
    end
end

function SetUI()
    levelui:EditText("Level : "..tostring(Stats.level))
    teamui:EditText("Team : "..tostring(Stats.team))
    nicknameui:EditText("Nickname : "..tostring(Stats.nickname))
    kagquiui:EditText("Kagune / Quinque : "..tostring(Stats.kagunequinque))
    kagquislot2ui:EditText("Kagune / Quinque Slot 2 : "..tostring(Stats.kagunequinqueslot2))
    kagquislot3ui:EditText("Kagune / Quinque Slot 3 : "..tostring(Stats.kagunequinqueslot3))
    quinxui:EditText("Quinx : "..tostring(Stats.quinx))
    quinxframeui:EditText("Current Frame : "..tostring(Stats.quinxframe))
    specialui:EditText("Special : "..tostring(Stats.special))
    specialstageui:EditText("Current Stage : "..tostring(Stats.specialstage))
    primarycolorui:EditText("Primary Color : "..tostring(Stats.primarycolor))
    secondarycolorui:EditText("Secondary Color : "..tostring(Stats.secondarycolor))
    maskui:EditText("Mask : "..tostring(Stats.mask))
    yenui:EditText("Yen : "..tostring(Stats.yen))
    rcui:EditText("RC : "..tostring(Stats.rc))
    reputationui:EditText("Reputation : "..tostring(Stats.reputation))
    clanui:EditText("Clan : "..tostring(Stats.clan))
    nishikiui:EditText("Nishiki Nishio : "..tostring(Stats.nishiki))
    amonui:EditText("Koutarou Amon : "..tostring(Stats.amon))
    yoshimuraui:EditText("Eto Yoshimura : "..tostring(Stats.yoshimura))
    physicalui:EditText("Physical : "..tostring(Stats.physical).." + "..tostring(Stats.physicalinc))
    weaponstatui:EditText("Kagune Quinque Stat : "..tostring(Stats.weaponstat).." + "..tostring(Stats.weaponstatinc))
    speedui:EditText("Speed : "..tostring(Stats.speed).." + "..tostring(Stats.speedinc))
    durabilityui:EditText("Durability : "..tostring(Stats.durability).." + "..tostring(Stats.durabilityinc))
    focusui:EditText("Focus : "..tostring(Stats.focus))
    yen2ui:EditText("2x Yen : "..tostring(Stats.yen2))
    exp2ui:EditText("2x Exp : "..tostring(Stats.exp2))
    rep2ui:EditText("2x Reputation : "..tostring(Stats.rep2))
    trainhalfui:EditText("Train Half : "..tostring(Stats.trainhalf))
    infredoui:EditText("Inf Redo Focus : "..tostring(Stats.infredo))
    gyasacui:EditText("Gya Sac's : "..tostring(Stats.gyasac))
    spawnlocationui:EditText("Spawn Location : "..tostring(Stats.spawnlocation))
end

while true do wait(0.1)
    SetValu()
    wait(0.2)
    SetUI()
end