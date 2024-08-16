Ext.Require("Server/Main.lua")

function OnSessionLoaded()
    _P("Auto Consume Elixir Loaded")
    
    Ext.Osiris.RegisterListener("LongRestStarted", 0 ,"after", function() ReadExistingElixir() end )
    Ext.Osiris.RegisterListener("UserCharacterLongRested",2,"after", function(character, isFullRest) CheckCharacterElixir() end)
    --Ext.Osiris.RegisterListener("StatusRemoved",4,"after", function(object, status, causee, applyStoryActionID) CheckElixirInInventory(object,status) end)
end

---@param event string
---@param completionEvent string
-- function Osi.IterateCharacters(event, completionEvent) end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)