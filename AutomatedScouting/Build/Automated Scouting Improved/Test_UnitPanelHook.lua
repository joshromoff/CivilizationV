--
-- This file needs VFS = true and a "UnitPanelAddin" entry on the Content tab
--
-- The modded UnitPanel.lua will then load and execute this file *after* it has registered the UnitPanelActionAddin and UnitPanelBuildAddin Lua events
--

local testAction = {
  Name = "DefaultExplore",
  Title = "Default Explore", -- or a TXT_KEY
  OrderPriority = 89, -- default is 200
  IconAtlas = "UNIT_ACTION_ATLAS", -- 45 and 64 variations required
  PortraitIndex = 47,
  ToolTip = "Reset Explore back to default", -- or a TXT_KEY_ or a function
  Condition = function(action, unit) print(string.format("Condition %s called for unit %i for player %i", action.Name, unit:GetID(), unit:GetOwner())); return true end, -- or nil or a boolean, default is true
  Disabled = function(action, unit) print(string.format("Disabled %s called for unit %i for player %i", action.Name, unit:GetID(), unit:GetOwner())); return false end, -- or nil or a boolean, default is false
  Action = function(action, unit, eClick)
    unit:SetToAutomate(0);
	Events.SerialEventGameMessagePopup({Type=ButtonPopupTypes.BUTTONPOPUP_TEXT, Data1=600, Text=string.format("%s %s called for %s %s automated= %s improved= %s score = %s", ((eClick == Mouse.eLClick) and "Left" or "Right"), action.Name, Players[unit:GetOwner()]:GetCivilizationAdjective(), unit:GetName(),tostring(unit:IsAutomated()),tostring(unit:GetAutoToggle()),tostring(unit:GetScore()))})
  end,
  }
  LuaEvents.UnitPanelActionAddin(testAction)
 local testAction1 = {
  Name = "GreedyExplore",
  Title = "Greedy Explore", -- or a TXT_KEY
  OrderPriority = 90, -- default is 200
  IconAtlas = "UNIT_ACTION_ATLAS", -- 45 and 64 variations required
  PortraitIndex = 47,
  ToolTip = "Turn on Greedy Explore", -- or a TXT_KEY_ or a function
  Condition = function(action, unit) print(string.format("Condition %s called for unit %i for player %i", action.Name, unit:GetID(), unit:GetOwner())); return true end, -- or nil or a boolean, default is true
  Disabled = function(action, unit) print(string.format("Disabled %s called for unit %i for player %i", action.Name, unit:GetID(), unit:GetOwner())); return false end, -- or nil or a boolean, default is false
  Action = function(action, unit, eClick)
    unit:SetToAutomate(1);
	Events.SerialEventGameMessagePopup({Type=ButtonPopupTypes.BUTTONPOPUP_TEXT, Data1=600, Text=string.format("%s %s called for %s %s automated= %s improved= %s score = %s", ((eClick == Mouse.eLClick) and "Left" or "Right"), action.Name, Players[unit:GetOwner()]:GetCivilizationAdjective(), unit:GetName(),tostring(unit:IsAutomated()),tostring(unit:GetAutoToggle()),tostring(unit:GetScore()))})
  end,
  }
  LuaEvents.UnitPanelActionAddin(testAction1)
 local testAction2 = {
  Name = "RandomExplore",
  Title = "Random Explore", -- or a TXT_KEY
  OrderPriority = 91, -- default is 200
  IconAtlas = "UNIT_ACTION_ATLAS", -- 45 and 64 variations required
  PortraitIndex = 47,
  ToolTip = "Turn on Random Explore", -- or a TXT_KEY_ or a function
  Condition = function(action, unit) print(string.format("Condition %s called for unit %i for player %i", action.Name, unit:GetID(), unit:GetOwner())); return true end, -- or nil or a boolean, default is true
  Disabled = function(action, unit) print(string.format("Disabled %s called for unit %i for player %i", action.Name, unit:GetID(), unit:GetOwner())); return false end, -- or nil or a boolean, default is false
  Action = function(action, unit, eClick)
    unit:SetToAutomate(2);
	Events.SerialEventGameMessagePopup({Type=ButtonPopupTypes.BUTTONPOPUP_TEXT, Data1=600, Text=string.format("%s %s called for %s %s automated= %s improved= %s score = %s", ((eClick == Mouse.eLClick) and "Left" or "Right"), action.Name, Players[unit:GetOwner()]:GetCivilizationAdjective(), unit:GetName(),tostring(unit:IsAutomated()),tostring(unit:GetAutoToggle()),tostring(unit:GetScore()))})
  end,
}
-- Uncomment the next line to see the example Unit Action
LuaEvents.UnitPanelActionAddin(testAction2)




local testBuild = {
  Name = "MyBuild",
  Title = "My Build", -- or a TXT_KEY
  OrderPriority = 150, -- not used, but kept for consistency
  IconAtlas = "UNIT_ACTION_ATLAS", -- 45 and 64 variations required
  PortraitIndex = 32,
  ToolTip = "My build tooltip", -- or a TXT_KEY_ or a function
  Condition = function(build, unit) print(string.format("Condition %s called for unit %i for player %i", build.Name, unit:GetID(), unit:GetOwner())); return true end, -- or nil or a boolean, default is true
  Recommended = function(build, unit) print(string.format("Recommended %s called for unit %i for player %i", build.Name, unit:GetID(), unit:GetOwner())); return true end, -- or nil or a boolean, default is false
  Disabled = function(build, unit) print(string.format("Disabled %s called for unit %i for player %i", build.Name, unit:GetID(), unit:GetOwner())); return false end, -- or nil or a boolean, default is false
  Build = function(build, unit, eClick)
    Events.SerialEventGameMessagePopup({Type=ButtonPopupTypes.BUTTONPOPUP_TEXT, Data1=600, Text=string.format("%s %s called for %s %s", ((eClick == Mouse.eLClick) and "Left" or "Right"), build.Name, Players[unit:GetOwner()]:GetCivilizationAdjective(), unit:GetName())})
  end,
}
-- Uncomment the next line to see the example Unit Build
-- LuaEvents.UnitPanelBuildAddin(testBuild)
