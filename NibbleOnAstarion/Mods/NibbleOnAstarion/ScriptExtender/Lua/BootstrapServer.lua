Ext.Require("Main.lua")

Ext.Utils.Print("NibbleOnAstarian mod loaded succesfully")


local function OnSessionLoaded()

    Ext.Utils.Print("NibbleOnAstarian On Session Loaded")
    Ext.Osiris.RegisterListener("LongRestStarted", 0, "before", PrintRestStartBefore())
    Ext.Osiris.RegisterListener("LongRestStarted", 0, "after", PrintRestStartAfter())
    Ext.Osiris.RegisterListener("LongRestFinished", 0, "before", PrintRestFinishBefore())
    Ext.Osiris.RegisterListener("LongRestFinished", 0, "after", PrintRestFinishAfter())

end

local function PrintRestStartBefore()
    Ext.Utils.Print("NibbleOnAstarian -- Rest Start Before")
    CheckNibbleTriggers(Osi.GetHostCharacter())
end
                      
local function PrintRestStartBefore()       
    Ext.Utils.Print("NibbleOnAstarian -- Rest Start After")
    CheckNibbleTriggers(Osi.GetHostCharacter())
end

local function PrintRestFinishBefore()
    Ext.Utils.Print("NibbleOnAstarian -- Rest Finish Before")
    CheckNibbleTriggers(Osi.GetHostCharacter())
end

local function PrintRestFinishAfter()    
    Ext.Utils.Print("NibbleOnAstarian -- Rest Finish After")
    CheckNibbleTriggers(Osi.GetHostCharacter())
end


Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
