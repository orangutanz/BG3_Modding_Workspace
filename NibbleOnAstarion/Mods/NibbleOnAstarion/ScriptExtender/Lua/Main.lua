    -- Tag: "S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"

    -- Tag: 469b943c-d986-470f-bd2e-84077b458fdc
    -- "Set on the character Astarion will be feeding on tonight." << the night nibble trigger
 
    -- Tag: d7819489-bbe1-4d7c-96f2-d01c7c336115
    -- "Astarion turns the player's character into a spawn"

    -- Tag: 97a839f0-9923-455a-b21f-1c1314fda711
    -- "Player has followed up on Astarion as their partner after Black Mass" << a tag that check if player have talked about being turned

---@param PlayerCharacter string
local function NibbleOnAstarion(PlayerCharacter)
    -- math.randomseed(os.clock()*100000000000)
    -- if randbool = rnd() < 0.5 then NibbleOnAstarion()
    
    Osi.ApplyStatus(PlayerCharacter, "ASTARION_HAPPY", -1)
    Osi.ApplyStatus("c7c13742-bacd-460a-8f65-f864fe41f255", "ASTARION_WEAK", -1)
end

---@param PlayerCharacter string
local function CheckNibbleTriggers(PlayerCharacter)
    local flagNibble = Osi.GetFlag("469b943c-d986-470f-bd2e-84077b458fdc", PlayerCharacter)
    local flagIsSpawn = Osi.GetFlag("d7819489-bbe1-4d7c-96f2-d01c7c336115", PlayerCharacter)
    local flagTalked = Osi.GetFlag("97a839f0-9923-455a-b21f-1c1314fda711", PlayerCharacter)

    -- Osi.IteratePlayerCharacters
    Ext.Utils.Print("Check Character: " .. PlayerCharacter)
    Ext.Utils.Print("Check Flag - Nibble: " .. flagNibble)
    Ext.Utils.Print("Check Flag - IsSpawn: " .. flagIsSpawn)
    Ext.Utils.Print("Check Flag - Talked: " .. flagTalked)  
end
