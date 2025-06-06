local CONFIG = require("Scripts\\TesteProtocol\\Config")
local TesteProtocol = {}

BridgeFunctionAttach('KeyboardEvent','KeyboardEventTeste')

function TesteProtocol.Init()
	ProtocolFunctions.ClientProtocol(TesteProtocol.Protocol)
end

function TesteProtocol.Protocol(Packet, PacketName)
	Console(2,string.format("TESTE Protocol %d %s",Packet,PacketName))
	ClearPacket(PacketName)

end

function KeyboardEventTeste(key)
	Console(1,string.format("TESTE keyboard %s %d",CONFIG.TesteMsg,key))
	if(key == Keys.A) then
		TesteProtocol.SendPacket()
	end
end

function TesteProtocol.SendPacket()
	local PacketName = string.format("Teste")
	Console(1,PacketName)
	CreatePacket(PacketName, 1)
	SetBytePacket(PacketName, 10)
	--SetBytePacket(PacketName, 20)
	SendPacket(PacketName)
	ClearPacket(PacketName)
end

TesteProtocol.Init()

