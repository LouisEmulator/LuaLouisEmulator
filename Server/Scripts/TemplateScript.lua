BridgeFunctionAttach('OnReadScript','TemplateScript_OnReadScript')
BridgeFunctionAttach('OnShutScript','TemplateScript_OnShutScript')
BridgeFunctionAttach('OnTimerThread','TemplateScript_OnTimerThread')
BridgeFunctionAttach('OnCommandManager','TemplateScript_OnCommandManager')
BridgeFunctionAttach('OnCommandDone','TemplateScript_OnCommandDone')
BridgeFunctionAttach('OnCharacterEntry','TemplateScript_OnCharacterEntry')
BridgeFunctionAttach('OnCharacterClose','TemplateScript_OnCharacterClose')
BridgeFunctionAttach('OnNpcTalk','TemplateScript_OnNpcTalk')
BridgeFunctionAttach('OnMonsterDie','TemplateScript_OnMonsterDie')
BridgeFunctionAttach('OnUserDie','TemplateScript_OnUserDie')
BridgeFunctionAttach('OnUserMove','TemplateScript_OnUserMove')
BridgeFunctionAttach('OnUserRespawn','TemplateScript_OnUserRespawn')
BridgeFunctionAttach('OnCheckUserTarget','TemplateScript_OnCheckUserTarget')
BridgeFunctionAttach('OnCheckUserKiller','TemplateScript_OnCheckUserKiller')
BridgeFunctionAttach('OnUserItemPick','TemplateScript_OnUserItemPick')
BridgeFunctionAttach('OnUserItemDrop','TemplateScript_OnUserItemDrop')
BridgeFunctionAttach('OnUserItemMove','TemplateScript_OnUserItemMove')
BridgeFunctionAttach('OnSQLAsyncResult','TemplateScript_OnSQLAsyncResult')

function TemplateScript_OnReadScript()
	-- ### Bridge information: ###
	-- Called once at GameServer initialization.
end

function TemplateScript_OnShutScript()
	-- ### Bridge information: ###
	-- Called once before script reload.
end

function TemplateScript_OnTimerThread()
	-- ### Bridge information: ###
	-- Called every 1 second, can be used as a timer.
end

function TemplateScript_OnCommandManager(aIndex, code, arg)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- code = Command index.
	-- arg = Command parameters.

	-- ### Bridge information: ###
	-- Called after a user types a valid command, must return (1) if the command is valid, (0) if not.
	return 0
end

function TemplateScript_OnCommandDone(aIndex, code)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- code = Command index.

	-- ### Bridge information: ###
	-- Called after a user execute valid command.
end

function TemplateScript_OnCharacterEntry(aIndex)
	-- ### Argument information: ###
	-- aIndex = User index.

	-- ### Bridge information: ###
	-- Called after a user enters the game with a character.
end

function TemplateScript_OnCharacterClose(aIndex)
	-- ### Argument information: ###
	-- aIndex = User index.

	-- ### Bridge information: ###
	-- Called after a user leaves the game with a character.
end

function TemplateScript_OnNpcTalk(aIndex, bIndex)
	-- ### Argument information: ###
	-- aIndex = NPC index.
	-- bIndex = User index.

	-- ### Bridge information: ###
	-- Called after a user talks with a NPC, must return (1) if the talk is successful, (0) if not.
	return 0
end

function TemplateScript_OnMonsterDie(aIndex, bIndex)
	-- ### Argument information: ###
	-- aIndex = Monster index (victim).
	-- bIndex = User index (killer).

	-- ### Bridge information: ###
	-- Called after a monster dies.
end

function TemplateScript_OnUserDie(aIndex, bIndex)
	-- ### Argument information: ###
	-- aIndex = User index (victim).
	-- bIndex = Object index (killer).

	-- ### Bridge information: ###
	-- Called after a user dies.
end

function TemplateScript_OnUserMove(aIndex, MapIndex)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- MapIndex = Object map index.

	-- ### Bridge information: ###
	-- Called after a user move.
end

function TemplateScript_OnUserRespawn(aIndex, KillerType)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- KillerType = Killer type (0=Monster,1=User,2=GuildWar,3=Duel).

	-- ### Bridge information: ###
	-- Called when a user is going to respawn.
end

function TemplateScript_OnCheckUserTarget(aIndex, bIndex)
	-- ### Argument information: ###
	-- aIndex = User index (attacker).
	-- bIndex = User index (target).

	-- ### Bridge information: ###
	-- Called on the attack target verification, must return (1) if the target can be attacked, (0) if not.
	return 1
end

function TemplateScript_OnCheckUserKiller(aIndex, bIndex)
	-- ### Argument information: ###
	-- aIndex = User index (killer).
	-- bIndex = User index (victim).

	-- ### Bridge information: ###
	-- Called on the player killer verification, must return (1) if the killer is going to receive PK status, (0) if not.
	return 1
end

function TemplateScript_OnUserItemPick(aIndex, slot)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- index = Item slot.

	-- ### Bridge information: ###
	-- Called on item pick, must return (1) if the item can be picked, (0) if not.
	return 1
end

function TemplateScript_OnUserItemDrop(aIndex, slot, x, y)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- index = Item slot.
	-- x = Item drop position x.
	-- y = Item drop position y.

	-- ### Bridge information: ###
	-- Called on item drop, must return (1) if the item can be dropped, (0) if not.
	return 1
end

function TemplateScript_OnUserItemMove(aIndex, aFlag, aSlot, bFlag, bSlot)
	-- ### Argument information: ###
	-- aIndex = User index.
	-- aFlag = Item source flag.
	-- aSlot= Item source slot.
	-- bFlag = Item target flag.
	-- bSlot= Item target slot.

	-- Flag list:
	-- 0 = Inventory.
	-- 1 = Trade.
	-- 2 = Warehouse.
	-- 3 = Chaos Box.
	-- 4 = Personal Shop.
	-- 5~20 = Chaos Box.
	-- 21 = Event Inventory. (S8 >)
	-- 22 = Muun Inventory. (S8 >)

	-- ### Bridge information: ###
	-- Called on item move, must return (1) if the item can be moved, (0) if not.
	return 1
end

function TemplateScript_OnSQLAsyncResult(label,param,result)
	-- ### Argument information: ###
	-- label = Query identification label.
	-- param = String parameter.
	-- result = Query result (0=Fail/1=Success).

	-- ### Bridge information: ###
	-- Called after async query execution.
end