-- Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("PSX Pet Hatcher V3.0.0", "DarkTheme")

-- AutoFarmUI
local AutoFarmTab = Window:NewTab("Pet Hatcher")
local BlowBubbleSection = AutoFarmTab:NewSection("Webhook")
local AutoSellSection = AutoFarmTab:NewSection("Hatch Ping")

-- EggsUI
local EggsTab = Window:NewTab("AutoFarm")
local FarmEggsSection = EggsTab:NewSection("Farm Coins")

-- TeleportUI
local TeleportTab = Window:NewTab("Egg Farming")
local TeleportToPlaceSection = TeleportTab:NewSection("Auto Hatch Egg")

-- TogglesUI
local TogglesTab = Window:NewTab("Toggles")
local ToggleUISection = TogglesTab:NewSection("Toggle UI")

-- AutoFarm
BlowBubbleSection:NewTextBox("Webhook", "Paste Your Webhook here (Optional)", function(txt)
	Webhook = txt
end)
ToggleUISection:NewButton("Start The Hatcher", "Starts The Hatcher", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Buddy25112/Test/main/testing1.lua"))()
end)
