local f = CreateFrame("Frame")

function f:onEvent(event, ...)
	self[event](self, event, ...)
end

function f:COMBAT_LOG_EVENT(event, ...)
	_, subEvent, _, _, _, _, _, _, _, _, _, spellID, spellName = CombatLogGetCurrentEventInfo()
	if spellName == "Living Bomb" then
		if subEvent == "SPELL_DAMAGE" then
			PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")
		end
	elseif spellName == "Thorium Grenade" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")

	elseif spellName == "Rough Dynamite" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")

	elseif spellName == "Rough Copper Bomb" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")

	elseif spellName == "Coarse Dynamite" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")

	elseif spellName == "Heavy Dynamite" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")
	
	elseif spellName == "Large Copper Bomb" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")
	
	elseif spellName == "Small Bronze Bomb" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")
	
	elseif spellName == "Thorium Grenade" then
		PlaySoundFile("Interface\\AddOns\\kaboom\\kaboom.ogg", "Master")
	end


				
end

function f:PLAYER_LOGIN(self, event, ...)
	print("login")
	--MuteSoundFile() I should mute the exsisting sounds
end


f:RegisterEvent("COMBAT_LOG_EVENT")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", f.onEvent)

