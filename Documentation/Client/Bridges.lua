BridgeFunctionAttach('MainLoader','TemplateScript_MainLoader')
BridgeFunctionAttach('MainProcThread','TemplateScript_MainProcThread')
BridgeFunctionAttach('MainInterfaceProcThread','TemplateScript_MainInterfaceProcThread')
BridgeFunctionAttach('OnReadScript','TemplateScript_OnReadScript')
BridgeFunctionAttach('OnShutScript','TemplateScript_OnShutScript')
BridgeFunctionAttach('KeyboardEvent','TemplateScript_KeyboardEvent')
BridgeFunctionAttach('ScrollMouseEvent','TemplateScript_ScrollMouseEvent')
BridgeFunctionAttach('RightClickEvent','TemplateScript_RightClickEvent')
BridgeFunctionAttach('LeftClickEvent','TemplateScript_LeftClickEvent')
BridgeFunctionAttach('UpdateMouseEvent','TemplateScript_UpdateMouseEvent')
BridgeFunctionAttach('UpdateKeyEvent','TemplateScript_UpdateKeyEvent')
BridgeFunctionAttach('ClientProtocol','TemplateScript_ClientProtocol')

################ UPDATE 41 ++ ###################
BridgeFunctionAttach('EventTimeMenuClick','TemplateScript_EventTimeMenuClick')
BridgeFunctionAttach('EventEscMenuClick','TemplateScript_EventEscMenuClick')


function TemplateScript_MainLoader()
	-- ### Bridge information: ###
	-- Called once at Client is loading files.
end

function TemplateScript_MainProcThread()
	-- ### Bridge information: ###
	-- Called in real time client proccess.
end

function TemplateScript_MainInterfaceProcThread()
	-- ### Bridge information: ###
	-- Called in real time interface proccess.
end

function TemplateScript_OnReadScript()
	-- ### Bridge information: ###
	-- Called once at GameServer initialization.
end

function TemplateScript_OnShutScript()
	-- ### Bridge information: ###
	-- Called once before script reload.
end

function TemplateScript_KeyboardEvent(KeyNumber)
	-- ### Argument information: ###
	-- KeyNumber = keyboard key number - Check Defines.lua

	-- ### Bridge information: ###
	-- Called after keyboard key pressed.
end

function TemplateScript_ScrollMouseEvent(ScrollData)
	-- ### Argument information: ###
	-- ScrollData = Scroll action.

	-- ### Bridge information: ###
	-- Called after use the mouse scroll.
end

function TemplateScript_RightClickEvent()
	-- ### Bridge information: ###
	-- Called after mouse right click.
end

function TemplateScript_LeftClickEvent()
	-- ### Bridge information: ###
	-- Called after mouse left click.
end

function TemplateScript_UpdateMouseEvent()
	-- ### Bridge information: ###
	-- Called in real time interface update.
end

function TemplateScript_UpdateKeyEvent()
	-- ### Bridge information: ###
	-- Called in real time interface key update.
end

function TemplateScript_ClientProtocol(head, packet_name)
	-- ### Bridge information: ###
	-- Called after receive some LUA packet.
end

################ UPDATE 41 ++ ###################
function TemplateScript_EventTimeMenuClick(index)
	-- ### Bridge information: ###
	-- index : Event index clicked
	-- Called in real time interface key update.
end

function TemplateScript_EventEscMenuClick(index)
	-- ### Bridge information: ###
	-- index : Menu index clicked
	-- Called in real time interface key update.
end