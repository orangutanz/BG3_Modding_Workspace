local readingTable = {}
local strElixir = "c69fb092-2f4f-4688-82b6-7d92405626b1"
local strBoost = "POTION_OF_STRENGTH_HILL_GIANT"

function ReadExistingElixir()
	local players = Osi.DB_Players:Get(nil)

    for i, charTable in pairs(players) do
        for j, character in pairs(charTable) do
            local has_Elixir_STR = Osi.HasActiveStatus(character,strBoost)
            if has_Elixir_STR == 1 then 
                _P(tostring(character) .. " has elixir boost: " .. strBoost)
                table.insert(readingTable,character)
            end
        end
	end
end

function ClearReadingTable()
    readingTable = {}
end

function CheckCharacterElixir()        
    for i,target in pairs(readingTable) do
        local count = Osi.TemplateIsInInventory(strElixir,target)
        _P(target .. "'s inventory has: " .. count .. " " .. strBoost)
        if count > 0 then
            Osi.TemplateRemoveFromUser(strElixir,target,1)
            Osi.ApplyStatus(target,strBoost,-1)
            _P("Using another elixir, gaining boost: " .. strBoost)
        end        
    end
    ClearReadingTable()
end