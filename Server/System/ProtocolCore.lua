ProtocolFunctions = {}

BridgeFunctionAttach('GameServerProtocol','GameServerProtocolRecv')

-- Packets que vem do cliente
local GameServerProtocol_Handles = {}
function GameServerProtocolRecv(aIndex, Packet, PacketName)
	for i = 1, #GameServerProtocol_Handles do
		if GameServerProtocol_Handles[i].callback(aIndex, Packet, PacketName)
		then
			return
		end
	end

	ClearPacket(PacketName)
end

function ProtocolFunctions.GameServerProtocol(callback)
	table.insert(GameServerProtocol_Handles, { callback = callback })
end

function ProtocolFunctions.Init()
	ProtocolFunctions.GameServerProtocol(ProtocolFunctions.ProtocolRecv)
end

function ProtocolFunctions.ProtocolRecv(aIndex,Packet, PacketName)
	LogColor(3,string.format("[ProtocolCore] aIndex: %d Name: %s Head: %d",aIndex,PacketName,Packet))

	if PacketName == "WindowTitle" then
		LogColor(3,"Testando")
		ClearPacket(PacketName)
	end

	if PacketName == "Teste" then
		LogColor(3,"Testando")
		ClearPacket(PacketName)
	end

end

ProtocolFunctions.Init()