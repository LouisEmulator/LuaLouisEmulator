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

function BridgeFunction_ItemEffect(...)
	if BridgeFunctionTable["ItemEffect"] ~= nil then
		for _, func in ipairs(BridgeFunctionTable["ItemEffect"]) do
			_G[func.Function](...)
		end
	end
end
