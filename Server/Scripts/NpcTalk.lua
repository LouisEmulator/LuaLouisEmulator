TalkNpc = {}

BridgeFunctionAttach('OnNpcTalk','TalkNpcOnNpcTalk')

function TalkNpcOnNpcTalk(Npc, aIndex)

	local NpcClass	= GetObjectClass(Npc)
	local NpcMap	= GetObjectMap(Npc)
	local NpcPosX	= GetObjectMapX(Npc)
	local NpcPosY	= GetObjectMapY(Npc)

	if NpcClass == 380 and NpcMap == 0 and NpcPosX == 130 and NpcPosY == 121 then
		ChatTargetSend(Npc,aIndex, string.format("Olá, qualquer duvida entre em contato com a equipe!"))
		return 1
	end

	return 0

end