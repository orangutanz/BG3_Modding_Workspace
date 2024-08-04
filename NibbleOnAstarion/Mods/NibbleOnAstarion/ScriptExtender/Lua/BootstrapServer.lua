Ext.Require("Main.lua")

print("NibbleOnAstarian mod loaded succesfully")

local function PrintRestStartBefore()
    print("NibbleOnAstarian::RestStarted")
end

local function PrintRestStartAfter()
    print("NibbleOnAstarian::RestStarted")
end

local function PrintRestFinishBefore()
    print("NibbleOnAstarian::RestStarted")
end

local function PrintRestFinishAfter()
    print("NibbleOnAstarian::RestStarted")
end

Ext.Osiris.RegisterListener("LongRestStarted", 0, "before", PrintRestStartBefore)
Ext.Osiris.RegisterListener("LongRestStarted", 0, "after", PrintRestStartAfter)
Ext.Osiris.RegisterListener("LongRestFinished", 0, "before", PrintRestFinishBefore)
Ext.Osiris.RegisterListener("LongRestFinished", 0, "after", PrintRestFinishAfter)