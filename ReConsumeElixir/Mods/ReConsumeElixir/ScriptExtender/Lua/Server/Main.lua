local targetTable = {}
local targetInfoIdxTable = {}

local elixirTable = {"c69fb092-2f4f-4688-82b6-7d92405626b1","45a775f8-2cf9-440d-b9eb-4ee5f17efca8","45cdcf69-bfd2-4311-a883-3f3631ab3959","e6490cc8-7f81-4aac-95e8-a58ce5e88a31","44cd95a7-4791-4ace-bea0-a5ca4421171b"}
local boostTable = { "POTION_OF_STRENGTH_HILL_GIANT"       ,"ALCH_ELIXIR_BLOODLUST"               ,"ALCH_ELIXIR_CONCENTRATION"           ,"POTION_OF_STRENGTH_CLOUD_GIANT"      , "ALCH_ELIXIR_CRITICALS"}


function ReadExistingElixir()
	local players = Osi.DB_Players:Get(nil)

    for i, charTable in pairs(players) do
        for j, character in pairs(charTable) do
            for k, boost in pairs(boostTable) do
                local has_Elixir = Osi.HasActiveStatus(character,boost)
                if has_Elixir == 1 then
                    table.insert(targetTable,character)
                    table.insert(targetInfoIdxTable,k)
                    --_P(tostring(character) .. " has elixir boost: " .. boost)
                end
            end
        end
	end
end

function ClearTables()
    targetTable = {}
    targetInfoIdxTable = {}
end

function CheckCharacterElixir()        
    for i,target in pairs(targetTable) do
        local idx = targetInfoIdxTable[i]
        local count = Osi.TemplateIsInInventory(elixirTable[idx],target)
        --_P(target .. "'s inventory has: " .. count .. " " .. boostTable[idx])
        if count > 0 then
            Osi.TemplateRemoveFromUser(elixirTable[idx],target,1)
            Osi.ApplyStatus(target,boostTable[idx],-1)
            --_P("Using another elixir, gaining boost: " .. boostTable[idx])
        end        
    end
    ClearTables()
end