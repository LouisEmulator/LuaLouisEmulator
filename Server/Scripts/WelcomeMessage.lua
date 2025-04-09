-- ===========================================================================
BridgeFunctionAttach('OnCharacterEntry','WelcomeMessage_OnCharacterEntry')
BridgeFunctionAttach('OnCharacterClose','WelcomeMessage_OnCharacterClose')
-- ===========================================================================

function WelcomeMessage_OnCharacterEntry(aIndex)
	
	local UserName = GetObjectName(aIndex)
	
	local UserAccountLevel = GetObjectAccountLevel(aIndex)
	
	local UserAccountExpireDate = GetObjectAccountExpireDate(aIndex)

	--if UserAccountLevel == 0 then 
		
	--	NoticeSend(aIndex,1,string.format(MessageGetByUserLang(248,aIndex),UserAccountExpireDate))
		
	--elseif UserAccountLevel == 1 then
		
	--	NoticeSend(aIndex,1,string.format(MessageGetByUserLang(249,aIndex),UserAccountExpireDate))
		
	--elseif UserAccountLevel == 2 then
		
	--	NoticeSend(aIndex,1,string.format(MessageGetByUserLang(250,aIndex),UserAccountExpireDate))
		
	--elseif UserAccountLevel == 3 then
		
	--	NoticeSend(aIndex,1,string.format(MessageGetByUserLang(251,aIndex),UserAccountExpireDate))
		
	--end
	
	if CommandCheckGameMasterLevel(aIndex,2) == 1 then
		
		SendMessageAllByNumber(639,UserName)
		
	end
	
	MessageSend(aIndex,0,0,"Teste LUA")
	
end

function WelcomeMessage_OnCharacterClose(aIndex)
	local UserName = GetObjectName(aIndex)
	
	local GameMasterLevel = CommandCheckGameMasterLevel(aIndex,8)
	
	if GameMasterLevel == 1 then
		
		NoticeSendToAll(0,string.format("Gamemaster %s disconnected!",UserName))
		
	end
end
