_G.SettingsTable = {
    Webhook = "";
    Legendaryping = "";
    Mythicalping = "";
    Exclusiveping = "";
    HatchType = "eggs";
    EnchantList = false;
}

_G.TrackList = {
    ['Basic'] = false;
    ['Rare'] = false;
    ['Epic'] = false;
    ['Legendary'] = false;
    ['Mythical'] = false;
    ['Exclusive'] = false;
}

-- Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("PSX Pet Hatcher V3.0.0", "DarkTheme")

-- PetHatcherUI
local PetHatcherTab = Window:NewTab("Pet Hatcher")
local WebhookHatchPingSection = PetHatcherTab:NewSection("Webhook/HatchPing")
local RaritiesSection = PetHatcherTab:NewSection("Rarities To Track")
local OtherSettingsSection = PetHatcherTab:NewSection("Other Settings")
local EnableHatcherSection = PetHatcherTab:NewSection("Enable Pet Hatcher")

-- AutofarmUI
local AutoFarmTab = Window:NewTab("AutoFarm")
local FarmCoinsSection = AutoFarmTab:NewSection("Coming Soon!")

-- EggFarmingUI
local EggFarmingTab = Window:NewTab("Egg Farming")
local AutoHatchEggSection = TeleportTab:NewSection("Auto Hatch Egg")

-- TogglesUI
local TogglesTab = Window:NewTab("Toggles")
local ToggleUISection = TogglesTab:NewSection("Toggle UI")

-- PetHatcher
WebhookHatchPingSection:NewTextBox("Webhook", "Paste Your Webhook here", function(Webhooktxt)
	_G.SettingsTable.Webhook = Webhooktxt
end)
WebhookHatchPingSection:NewTextBox("Legendary Hatch Ping", "Ping For Legendary Hatches (Leave Blank For Nothing)", function(Legandarytxt)
	_G.SettingsTable.Legendaryping = Legendarytxt
end)
WebhookHatchPingSection:NewTextBox("Mythical Hatch Ping", "Ping For Mythical Hatches (Leave Blank For Nothing)", function(Mythicaltxt)
	_G.SettingsTable.Mythicalping = Mythicaltxt
end)
WebhookHatchPingSection:NewTextBox("Exclusive Hatch Ping", "Ping For Exclusive Hatches (Leave Blank For Nothing)", function(Exclusivetxt)
	_G.SettingsTable.Exclusiveping = Exclusivetxt
end)

RaritiesSection:NewToggle("Track Common Hatches", "Tracks Common Hatches", function(bool)
    _G.TrackList['Basic'] = bool
end)
RaritiesSection:NewToggle("Track Rare Hatches", "Tracks Rare Hatches", function(bool)
    _G.TrackList['Rare'] = bool
end)
RaritiesSection:NewToggle("Track Epic Hatches", "Tracks Epic Hatches", function(bool)
    _G.TrackList['Epic'] = bool
end)
RaritiesSection:NewToggle("Track Legendary Hatches", "Tracks Legendary Hatches", function(bool)
    _G.TrackList['Legendary'] = bool
end)
RaritiesSection:NewToggle("Track Mythical Hatches", "Tracks Mythical Hatches", function(bool)
    _G.TrackList['Mythical'] = bool
end)
RaritiesSection:NewToggle("Track Exclusive Hatches", "Tracks Exclusive Hatches", function(bool)
    _G.TrackList['Exclusive'] = bool
end)

OtherSettingsSection:NewDropdown("Footer Text", "eggs = Egg Count, Hatch = Hatch Amount, PSX = Pet Simulator X", {"eggs", "Hatch", "PSX"}, function(FooterTextOption)
    _G.SettingsTable.HatchType = FooterTextOption
end)
OtherSettingsSection:NewToggle("List Pet Enchants", "Lists Pet Enchants (Legendary+)", function(bool)
    _G.SettingsTable.EnchantList = bool
end)

EnableHatcherSection:NewButton("Start The Hatcher", "Starts The Hatcher", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Buddy25112/Test/main/testing1.lua"))()
end)
