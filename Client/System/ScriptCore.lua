BridgeFunctionTable = {}

function BridgeFunctionAttach(BridgeName,FunctionName)
	if BridgeFunctionTable[BridgeName] == nil then
		BridgeFunctionTable[BridgeName] = {}
	end
	
	for _, func in ipairs(BridgeFunctionTable[BridgeName]) do
		if func.Function == FunctionName then
			return
		end
	end
	table.insert(BridgeFunctionTable[BridgeName], { Function = FunctionName })
end

function BridgeFunction_MainLoader()
	if BridgeFunctionTable["MainLoader"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["MainLoader"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_MainProcThread()
	if BridgeFunctionTable["MainProcThread"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["MainProcThread"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_MainInterfaceProcThread()
	if BridgeFunctionTable["MainInterfaceProcThread"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["MainInterfaceProcThread"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_OnReadScript()
	if BridgeFunctionTable["OnReadScript"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["OnReadScript"]) do
			_G[func.Function]()
		end
	end
end


function BridgeFunction_OnShutScript()
	if BridgeFunctionTable["OnShutScript"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["OnShutScript"]) do
			_G[func.Function]()
		end
	end
end


function BridgeFunction_KeyboardEvent(...)
	if BridgeFunctionTable["KeyboardEvent"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["KeyboardEvent"]) do
			_G[func.Function](...)
		end
	end
end

function BridgeFunction_ScrollMouseEvent(...)
	if BridgeFunctionTable["ScrollMouseEvent"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["ScrollMouseEvent"]) do
			_G[func.Function](...)
		end
	end
end

function BridgeFunction_RightClickEvent()
	if BridgeFunctionTable["RightClickEvent"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["RightClickEvent"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_LeftClickEvent()
	if BridgeFunctionTable["LeftClickEvent"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["LeftClickEvent"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_UpdateMouseEvent()
	if BridgeFunctionTable["UpdateMouseEvent"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["UpdateMouseEvent"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_UpdateKeyEvent()
	if BridgeFunctionTable["UpdateKeyEvent"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["UpdateKeyEvent"]) do
			_G[func.Function]()
		end
	end
end

function BridgeFunction_ClientProtocol(...)
	if BridgeFunctionTable["ClientProtocol"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["ClientProtocol"]) do
			_G[func.Function](...)
		end
	end
end
