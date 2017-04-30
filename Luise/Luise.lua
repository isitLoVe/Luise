function Luise_OnLoad()
	SlashCmdList["Luise"] = Luise_SlashCommand
	SLASH_Luise1 = "/luise"
	SLASH_Luise2 = "/Luise"
end


function Luise_SlashCommand(msg)
	if msg == "fakesws" then
		Luise_FakeSWStats()
	else
		DEFAULT_CHAT_FRAME:AddMessage(" - |cff9482c9fakesws|r: posts fake SWS DMG Numbers")
	end
end

function Luise_OnEvent()
end

function Luise_FakeSWStats()
	FakeMeterDB = {}
    local raidnum = GetNumRaidMembers()

    if ( raidnum > 0 ) then
	FakeMeterDB = {}

		for i = 1, raidnum do
			local rName, rRank, rSubgroup, rLevel, rClass = GetRaidRosterInfo(i)
			FakeMeterDB[i]   = {}
			FakeMeterDB[i].rName    = rName
			FakeMeterDB[i].rClass    = rClass
			FakeMeterDB[i].rIndex   = i
			if rClass == "Rogue" or rClass == "Warrior" or rClass == "Mage" or rClass == "Warlock" or rClass == "Hunter" then
				FakeMeterDB[i].rDmg   = math.random(10000,100000)
			else
				FakeMeterDB[i].rDmg   = math.random(1,10000)
			end
		end
	end

	table.sort(FakeMeterDB, function(a,b) return a.rDmg > b.rDmg end)

	SendChatMessage("-------- Damage Done (S) ActiveOnly: No", "RAID")
	
	if FakeMeterDB[1] then
		SendChatMessage("#01: "..FakeMeterDB[1].rName.." - "..FakeMeterDB[1].rDmg, "RAID")
	end
	
	if FakeMeterDB[2] then
		SendChatMessage("#02: "..FakeMeterDB[2].rName.." - "..FakeMeterDB[2].rDmg, "RAID")
	end
	
	if FakeMeterDB[3] then
		SendChatMessage("#03: "..FakeMeterDB[3].rName.." - "..FakeMeterDB[3].rDmg, "RAID")
	end
	
	if FakeMeterDB[4] then
		SendChatMessage("#04: "..FakeMeterDB[4].rName.." - "..FakeMeterDB[4].rDmg, "RAID")
	end
	
	if FakeMeterDB[5] then
		SendChatMessage("#05: "..FakeMeterDB[5].rName.." - "..FakeMeterDB[5].rDmg, "RAID")
	end
	
	if FakeMeterDB[6] then
		SendChatMessage("#06: "..FakeMeterDB[6].rName.." - "..FakeMeterDB[6].rDmg, "RAID")
	end
	
	if FakeMeterDB[7] then
		SendChatMessage("#07: "..FakeMeterDB[7].rName.." - "..FakeMeterDB[7].rDmg, "RAID")
	end
	
 	if FakeMeterDB[8] then
		SendChatMessage("#08: "..FakeMeterDB[8].rName.." - "..FakeMeterDB[8].rDmg, "RAID")
	end
	
	if FakeMeterDB[9] then
		SendChatMessage("#09: "..FakeMeterDB[9].rName.." - "..FakeMeterDB[9].rDmg, "RAID")
	end
	
	if FakeMeterDB[10] then
		SendChatMessage("#10: "..FakeMeterDB[10].rName.." - "..FakeMeterDB[10].rDmg, "RAID")
	end

end
