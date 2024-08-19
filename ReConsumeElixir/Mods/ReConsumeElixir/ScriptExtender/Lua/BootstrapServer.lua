Ext.Require("Server/Main.lua")

function OnSessionLoaded()    
    Ext.Osiris.RegisterListener("LongRestStarted", 0 ,"after", function() ReadExistingElixir() end )
    Ext.Osiris.RegisterListener("UserCharacterLongRested",2,"after", function(character, isFullRest) CheckCharacterElixir() end)
end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)