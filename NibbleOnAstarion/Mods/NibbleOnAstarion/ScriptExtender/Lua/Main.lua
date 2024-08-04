local astarion = "S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"

local function CheckNibbleTriggers()

    -- Tag: 469b943c-d986-470f-bd2e-84077b458fdc
    -- "Set on the character Astarion will be feeding on tonight."   << This is night nibble trigger
 
    -- Tag: d7819489-bbe1-4d7c-96f2-d01c7c336115
    -- "Astarion turns the player's character into a spawn"

    
    if
    -- math.randomseed(os.clock()*100000000000)
    -- if randbool = rnd() < 0.5 then NibbleOnAstarion()
    
end

---@param spawnCharacter string
local function NibbleOnAstarion(spawnCharacter)

    Osi.ApplyStatus(spawnCharacter, "ASTARION_HAPPY", -1)
    Osi.ApplyStatus("c7c13742-bacd-460a-8f65-f864fe41f255", "ASTARION_WEAK", -1)
end