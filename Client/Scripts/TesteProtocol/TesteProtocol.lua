local CONFIG = require("Scripts\\TesteProtocol\\Config")
local TesteProtocol = {}
local testemark = 0
local received = false

BridgeFunctionAttach('KeyboardEvent','KeyboardEventTeste')

function TesteProtocol.Init()
	ProtocolFunctions.ClientProtocol(TesteProtocol.Protocol)
end

BridgeFunctionAttach('MainInterfaceProcThread','TesteProtocolInterface')

function TesteProtocolInterface()

	if received then
		CreateGuildMark(61920,testemark) 
		RenderImage2(61920, 150, 150, 50, 50, 0.0, 0.0, 1.0, 1.0, 1, 1, 0.0)
	end
end

function TesteProtocol.Protocol(Packet, PacketName)
	local testebyte = GetBytePacket(PacketName,-1)
	testemark = GetHexPacketLength(PacketName,-1,32)

	Console(2,string.format("TESTE Protocol %d %s %d",Packet,PacketName,testebyte))
	ClearPacket(PacketName)

	received = true
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

