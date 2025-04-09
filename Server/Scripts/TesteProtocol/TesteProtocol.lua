local config = require("Scripts\\TesteProtocol\\Config")
local TesteProtocol = {}

function TesteProtocol.Init()
	ProtocolFunctions.GameServerProtocol(TesteProtocol.Protocol)
end

function TesteProtocol.Protocol(aIndex, Packet, PacketName)

	LogColor(1,string.format("Recv Protocol %d %d %s",aIndex,Packet,PacketName))

	ClearPacket(PacketName)


	local PacketName2 = string.format("Teste2")
	CreatePacket(PacketName2, 1)
	SetBytePacket(PacketName2, 10)
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
