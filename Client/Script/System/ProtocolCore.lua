ProtocolFunctions = {}

BridgeFunctionAttach('ClientProtocol','ClientProtocolRecv')

-- Packets que vem do gameserver
local ClientProtocol_Handles = {}
function ClientProtocolRecv(Packet, PacketName)
	for i = 1, #ClientProtocol_Handles do
		if ClientProtocol_Handles[i].callback(Packet, PacketName)
		then
			return
		end
	end

	ClearPacket(PacketName)
end

function ProtocolFunctions.ClientProtocol(callback)
	table.insert(ClientProtocol_Handles, { callback = callback })
end

function ProtocolFunctions.Init()
	ProtocolFunctions.ClientProtocol(ProtocolFunctions.ProtocolRecv)
end

function ProtocolFunctions.ProtocolRecv(Packet, PacketName)
	Console(3,string.format("[ProtocolCore] Name: %s Head: %d",PacketName,Packet))

	if PacketName == "WindowTitle" then
		SetWindowTitle("Testando")
		ClearPacket(PacketName)
	end

	if PacketName == "Teste2" then
		SetWindowTitle("Testando")
		ClearPacket(PacketName)
	end

end

ProtocolFunctions.Init()