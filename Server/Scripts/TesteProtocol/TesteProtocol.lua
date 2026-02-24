local config = require("Scripts\\TesteProtocol\\Config")
local TesteProtocol = {}

function TesteProtocol.Init()
	ProtocolFunctions.GameServerProtocol(TesteProtocol.Protocol)
end

function TesteProtocol.Protocol(aIndex, Packet, PacketName)
	
	local testebyte = GetBytePacket(PacketName,0)

	LogColor(1,string.format("Recv Protocol %d %d %s %d",aIndex,Packet,PacketName,testebyte))

	ClearPacket(PacketName)

	local PacketName2 = string.format("Teste2")
	CreatePacket(PacketName2, 1)
	SetBytePacket(PacketName2, 10)
	SetHexPacketLength(PacketName2,GetObjectGuildMark(aIndex),32) --SetCharPacketLength
	SendPacket(PacketName2,aIndex)
	ClearPacket(PacketName2)
	return 1

end

function TesteProtocol.MainProc()
	--LogColor(1,string.format(config.TesteMsg))
	LogColor(1,string.format(config.MESSAGES[2]["Eng"]))
	--DumpStack()
end

Timer.Interval(1, TesteProtocol.MainProc)

TesteProtocol.Init()
