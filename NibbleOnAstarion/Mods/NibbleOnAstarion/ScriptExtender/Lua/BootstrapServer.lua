Ext.Require("Server/Main.lua")

function OnSessionLoaded()
    --_P("NibbleOnAstarion Mod Loaded")
    Ext.Osiris.RegisterListener("UserCharacterLongRested", 2, "after", function(character, isFullRest) CheckFlags(character) end)
end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
