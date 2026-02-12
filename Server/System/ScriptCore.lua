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


function BridgeFunction_OnTimerThread()

	if BridgeFunctionTable["OnTimerThread"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnTimerThread"]) do
		
			_G[func.Function]()
			
		end
		
	end

end


function BridgeFunction_OnCommandManager(...)

	if BridgeFunctionTable["OnCommandManager"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCommandManager"]) do
		
			local ret =_G[func.Function](...)
			
			if ret ~= 0 then return 1 end
		end
		
	end

	return 0

end


function BridgeFunction_OnCommandDone(...)

	if BridgeFunctionTable["OnCommandDone"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCommandDone"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end


function BridgeFunction_OnCharacterEntry(...)

	if BridgeFunctionTable["OnCharacterEntry"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCharacterEntry"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end


function BridgeFunction_OnCharacterClose(...)

	if BridgeFunctionTable["OnCharacterClose"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCharacterClose"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end


function BridgeFunction_OnNpcTalk(...)

	if BridgeFunctionTable["OnNpcTalk"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnNpcTalk"]) do
		
			local ret =_G[func.Function](...)
			
			if ret ~= 0 then return 1 end
			
		end
		
	end

	return 0

end


function BridgeFunction_OnMonsterDie(...)

	if BridgeFunctionTable["OnMonsterDie"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnMonsterDie"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end


function BridgeFunction_OnUserDie(...)

	if BridgeFunctionTable["OnUserDie"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserDie"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end

function BridgeFunction_OnUserMove(...)

	if BridgeFunctionTable["OnUserMove"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserMove"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end

function BridgeFunction_OnUserRespawn(...)

	if BridgeFunctionTable["OnUserRespawn"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserRespawn"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end


function BridgeFunction_OnCheckUserTarget(...)

	if BridgeFunctionTable["OnCheckUserTarget"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCheckUserTarget"]) do
		
			local ret =_G[func.Function](...)
			
			if ret == 0 then return 0 end
			
		end
		
	end

	return 1

end


function BridgeFunction_OnCheckUserKiller(...)

	if BridgeFunctionTable["OnCheckUserKiller"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCheckUserKiller"]) do
		
			local ret =_G[func.Function](...)
			
			if ret == 0 then return 0 end
			
		end
		
	end

	return 1

end


function BridgeFunction_OnUserItemPick(...)

	if BridgeFunctionTable["OnUserItemPick"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserItemPick"]) do
		
			local ret =_G[func.Function](...)
			
			if ret == 0 then return 0 end
			
		end
		
	end

	return 1

end


function BridgeFunction_OnUserItemDrop(...)

	if BridgeFunctionTable["OnUserItemDrop"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserItemDrop"]) do
		
			local ret =_G[func.Function](...)
			
			if ret == 0 then return 0 end
			
		end
		
	end

	return 1

end


function BridgeFunction_OnUserItemMove(...)

	if BridgeFunctionTable["OnUserItemMove"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserItemMove"]) do
		
			local ret =_G[func.Function](...)
			
			if ret == 0 then return 0 end
			
		end
		
	end

	return 1

end

function BridgeFunction_OnUserItemUse(...)

	if BridgeFunctionTable["OnUserItemUse"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserItemUse"]) do
		
			local ret =_G[func.Function](...)
			
			if ret ~= 0 then return ret end
			
		end
		
	end

	return 0

end

function BridgeFunction_OnUserDamage(...)

	if BridgeFunctionTable["OnUserDamage"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserDamage"]) do
		
			local ret =_G[func.Function](...)
			
			if ret ~= 0 then return ret end
		end
		
	end

	return 0
end

function BridgeFunction_OnMonsterDamage(...)

	if BridgeFunctionTable["OnMonsterDamage"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnMonsterDamage"]) do
		
			local ret =_G[func.Function](...)
			
			if ret ~= 0 then return ret end
		end
		
	end

	return 0
end

function BridgeFunction_OnSQLAsyncResult(...)

	if BridgeFunctionTable["OnSQLAsyncResult"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnSQLAsyncResult"]) do
		
			_G[func.Function](...)
			
		end
		
	end
end

function BridgeFunction_GameServerProtocol(...)

	if BridgeFunctionTable["GameServerProtocol"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["GameServerProtocol"]) do
		
			_G[func.Function](...)
			
		end
		
	end
end

function BridgeFunction_OnUserLevelUp(...)

	if BridgeFunctionTable["OnUserLevelUp"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserLevelUp"]) do
		
			local ret =_G[func.Function](...)
			
			return ret
		end
	end

	return -1
end

function BridgeFunction_OnUserMasterLevelUp(...)

	if BridgeFunctionTable["OnUserMasterLevelUp"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnUserMasterLevelUp"]) do
		
			local ret =_G[func.Function](...)
			
			return ret
		end
	end

	return -1
end

function BridgeFunction_OnOpenWarehouse(...)

	if BridgeFunctionTable["OnOpenWarehouse"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnOpenWarehouse"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end

function BridgeFunction_OnCloseWarehouse(...)

	if BridgeFunctionTable["OnCloseWarehouse"] ~= nil then
	
		for _, func in ipairs(BridgeFunctionTable["OnCloseWarehouse"]) do
		
			_G[func.Function](...)
			
		end
		
	end

end
