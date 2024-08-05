Ext.Require("Main.lua")
print("NibbleOnAstarian mod loaded succesfully")
Ext.Utils.Print("..............NibbleOnAstarian mod loaded succesfully")

local function OnSessionLoaded()
    Print("................NibbleOnAstarian Session Loaded ....................")
    Ext.Utils.Print("...............NibbleOnAstarian On Session Loaded..........")
    --Ext.Osiris.RegisterListener("LongRestStarted", 0, "before", PrintRestStartBefore())
    --Ext.Osiris.RegisterListener("LongRestStarted", 0, "after", PrintRestStartAfter())
    --Ext.Osiris.RegisterListener("LongRestFinished", 0, "before", PrintRestFinishBefore())
    --Ext.Osiris.RegisterListener("LongRestFinished", 0, "after", PrintRestFinishAfter())

end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
