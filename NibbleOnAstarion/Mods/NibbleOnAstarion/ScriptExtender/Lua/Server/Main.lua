function NibbleOnAstarion(char)
    _P("Nibble on Astarion!")
    Osi.ApplyStatus(char, "ASTARION_HAPPY", -1)
    Osi.ApplyStatus("c7c13742-bacd-460a-8f65-f864fe41f255", "ASTARION_WEAK", -1)
end


function CheckFlags(Char)
    
    local flagIsSpawn = Osi.GetFlag("d7819489-bbe1-4d7c-96f2-d01c7c336115", Char) --int

    if flagIsSpawn == 0 then
        return
    end

    local flagNibble = Osi.GetFlag("469b943c-d986-470f-bd2e-84077b458fdc", Char) --int
    local flagTalked = Osi.GetFlag("97a839f0-9923-455a-b21f-1c1314fda711", Char) --int
    local flagBreakUp = Osi.GetFlag("5a60943f-979b-4120-9b60-9e9b29529402", Char) --int

    Ext.Utils.Print("Spawn: " .. Char)
    Ext.Utils.Print("Flags - Nibble:" .. flagNibble .. " Talked:" .. flagTalked .. " BreakUp:" .. flagBreakUp)

    if flagNibble == 1 and flagTalked == 1 and flagBreakUp == 0 then
        NibbleOnAstarion(Char)
    end
end