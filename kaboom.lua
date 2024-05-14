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
	end		
end

function f:PLAYER_LOGIN(self, event, ...)
	print("login")
	--MuteSoundFile() I should mute the exsisting sounds
end


f:RegisterEvent("COMBAT_LOG_EVENT")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", f.onEvent)

