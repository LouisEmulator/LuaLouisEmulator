-- ### BASE FUNCTIONS ###
GetMaxIndex()			return MAX_OBJECT
GetMinUserIndex()		return OBJECT_START_USER
GetMaxUserIndex()		return (OBJECT_START_USER+MAX_OBJECT_USER)
GetMinMonsterIndex()	return OBJECT_START_MONSTER
GetMaxMonsterIndex()	return (OBJECT_START_MONSTER+MAX_OBJECT_MONSTER)
etGameServerCode()		return gServerInfo.m_ServerCode
GetGameServerVersion()	return GAMESERVER_UPDATE
GetGameServerProtocol()	return GAMESERVER_LANGUAGE
GetGameServerCurUser()	return gObjTotalUser
GetGameServerMaxUser()	return Server Max User
GET_ITEM(aValue,bValue)  return GET_ITEM(aValue,bValue)
GetLicenseCustomerName() return CustomerName
GetObjectConnected(aIndex) return 0 or 1
GetObjectIpAddress(aIndex) return user ip
GetObjectType(aIndex) return object type
GetObjectAccount(aIndex) return object accountname
GetObjectName(aIndex) return character name
GetObjectPersonalCode(aIndex) return object personal code
GetObjectClass(aIndex) return object class
GetObjectChangeUp(aIndex) return object changeup
GetObjectLevel(aIndex) return object level
GetObjectLevelUpPoint(aIndex)
GetObjectMoney(aIndex)
GetObjectStrength(aIndex)
GetObjectDexterity(aIndex)
GetObjectVitality(aIndex)
GetObjectEnergy(aIndex)
GetObjectLeadership(aIndex)
GetObjectExtraStrength(aIndex)
GetObjectExtraDexterity(aIndex)
GetObjectExtraVitality(aIndex)
GetObjectExtraEnergy(aIndex)
GetObjectExtraLeadership(aIndex)
GetObjectTotalLevel(aIndex)
GetObjectTotalStrength(aIndex)
GetObjectTotalDexterity(aIndex)
GetObjectTotalVitality(aIndex)
GetObjectTotalEnergy(aIndex)
GetObjectTotalLeadership(aIndex)
GetObjectDefaultStrength(aIndex)
GetObjectDefaultDexterity(aIndex)
GetObjectDefaultVitality(aIndex)
GetObjectDefaultEnergy(aIndex)
GetObjectDefaultLeadership(aIndex)
GetObjectLive(aIndex)
GetObjectLife(aIndex)
GetObjectAddLife(aIndex)
GetObjectMaxLife(aIndex)
GetObjectTotalLife(aIndex)
GetObjectMana(aIndex)
GetObjectMaxMana(aIndex)
GetObjectBP(aIndex)
GetObjectMaxBP(aIndex)
GetObjectDefense(aIndex)
GetObjectShield(aIndex)
GetObjectMaxShield(aIndex)
GetObjectPKCount(aIndex)
GetObjectPKLevel(aIndex)
GetObjectPKTimer(aIndex)
GetObjectMap(aIndex)
GetObjectMapX(aIndex)
GetObjectMapY(aIndex)
GetObjectDeathMap(aIndex)
GetObjectDeathMapX(aIndex)
GetObjectDeathMapY(aIndex)
GetObjectAuthority(aIndex)
GetObjectPartyNumber(aIndex)
GetObjectGuildNumber(aIndex)
GetObjectGuildStatus(aIndex)
GetObjectGuildName(aIndex)
GetObjectGuildRelationship(aIndex,bIndex)
GetObjectGuildUnionName(aIndex)
GetObjectChange(aIndex)
GetObjectInterface(aIndex)
GetObjectMasterLevel(aIndex)
GetObjectMasterPoint(aIndex)
GetObjectAccountLevel(aIndex)
GetObjectLanguage(aIndex)
GetObjectAccountExpireDate(aIndex)
GetObjectReset(aIndex)
GetObjectMasterReset(aIndex)
GetObjectGensRank(aIndex)
GetObjectGensSymbol(aIndex)
GetObjectGensFamily(aIndex)
GetObjectGensContribution(aIndex)
GetObjectCSGuildSide(aIndex)
GetObjectOfflineFlag(aIndex)
GetObjectIndexByName(charname)
SetObjectLevel(aIndex,aValue)
SetObjectLevelUpPoint(aIndex,aValue)
SetObjectMoney(aIndex,aValue)
SetObjectStrength(aIndex,aValue)
SetObjectDexterity(aIndex,aValue)
SetObjectVitality(aIndex,aValue)
SetObjectEnergy(aIndex,aValue)
SetObjectLeadership(aIndex,aValue)
SetObjectChatLimitTime(aIndex,aValue)
SetObjectPKCount(aIndex,aValue)
SetObjectPKLevel(aIndex,aValue)
SetObjectPKTimer(aIndex,aValue)
SetObjectMap(aIndex,aValue)
SetObjectMapX(aIndex,aValue)
SetObjectMapY(aIndex,aValue)
SetObjectMasterLevel(aIndex,aValue)
SetObjectMasterPoint(aIndex,aValue)
ChatTargetSend(aIndex,bIndex,string)
CommandCheckGameMasterLevel(aIndex,aValue)
CommandGetArgNumber(arg,aValue)
CommandGetArgString(arg,aValue)
CommandSend(aIndex,string)
ConfigReadNumber(string,string,string)
ConfigReadString(string,string,string)
ConfigSaveString(string,string,string)
EffectAdd(aIndex,aValue,bValue,cValue,dValue,eValue,fValue,gValue)
EffectDel(aIndex,aValue)
EffectCheck(aIndex,aValue)
EffectClear(aIndex)
FireworksSend(aIndex,aValue,bValue)
InventoryGetWearSize() return INVENTORY_WEAR_SIZE
InventoryGetMainSize() return INVENTORY_MAIN_SIZE
InventoryGetFullSize() return INVENTORY_FULL_SIZE
InventoryGetItemTable()
InventoryGetItemIndex(aIndex,aValue)
InventoryGetItemCount(aIndex,aValue, bValue)
InventoryDelItemIndex(aIndex,aValue)
InventoryDelItemCount(aIndex,aValue,bValue,cValue,dValue,eValue)
InventoryGetFreeSlotCount(aIndex)
InventoryCheckSpaceByItem(aIndex,aValue)
InventoryCheckSpaceBySize(aIndex,aValue,bValue)
ItemDrop(aIndex,aValue,bValue,cValue,dValue)
ItemDropEx(aIndex,aValue,bValue,cValue,dValue,eValue,fValue,gValue,hValue,iValue,jValue,kValue,lValue,mValue,nValue,oValue,pValue,qValue,rValue,sValue,tValue,uValue)
ItemGive(aIndex,aValue)
ItemGiveEx(aIndex,aValue,bValue,cValue,dValue,eValue,fValue,gValue,hValue,iValue,jValue,kValue,lValue,mValue,nValue,oValue,pValue,qValue)
LevelUpSend(aIndex)
LogPrint(string)
LogColor(aValue,string) 
MapCheckAttr(aValue,bValue,cValue,dValue)
MasterLevelUpSend(aIndex)
MasterSkillTreeRebuild(aIndex,aValue)
MessageGet(aValue)
MessageGetByUserLang(aValue,aIndex)
MessageGetByLang(aValue, bValue)
MoneySend(aIndex)
MonsterCreate(aValue,bValue,cValue,dValue,eValue)
MonsterDelete(aIndex)
MonsterSummonCreate(aIndex,aValue,bValue,cValue,dValue,eValue,fValue)
MonsterSummonDelete(aIndex)
MoveUser(aIndex,aValue)
MoveUserEx(aIndex,aValue,bValue,cValue)
MessageSend(aIndex,aValue,bValue,string)
MessageSendToAll(aValue,bValue,string)
NoticeSend(aIndex,aValue,string)
NoticeSendToAll(aValue,string)
NoticeGlobalSend(aValue,string)
PartyGetMemberCount(aValue)
PartyGetMemberIndex(aValue,bValue)
ObjectGetCoin()
ObjectAddCoin(aIndex,aValue,bValue,cValue)
ObjectSubCoin(aIndex,aValue,bValue,cValue)
PermissionCheck(aIndex,aValue)
PermissionInsert(aIndex,aValue)
PermissionRemove(aIndex,aValue)
PKLevelSend(aIndex,aValue)
PostSend(aValue,bValue,charactername,string)
QuestStateCheck(aIndex,aValue)
RandomGetNumber(aValue)
SkinChangeSend(aIndex,aValue)
UserDisconnect(aIndex)
UserGameLogout(aIndex,aValue)
UserCalcAttribute(aIndex)
UserInfoSend(aIndex)
UserActionSend(aIndex,bIndex,aValue)
UserSetAccountLevel(aIndex,aValue,bValue)
DumpStack()

-- ### PACKET FUNCTIONS ###
CreatePacket(packetName, packet) -> create packet for send main
SetDwordPacket(packetName, position) -> set value dword
GetDwordPacket(packetName, position) -> get value dword
SetWordPacket(packetName, position) -> set value word
GetWordPacket(packetName, position) -> get value word
SetBytePacket(packetName, position) -> set value byte
GetBytePacket(packetName, position) -> get value byte
SetCharPacket(packetName, string) -> set a string with a maximum of 10 characters
GetCharPacket(packetName, position) -> get string
SetCharPacketLength(packetName, string, length) -> set a string the size you set
GetCharPacketLength(packetName, string, length) -> get a string
SendPacket(packetName, aIndex) -> send packet for player
ClearPacket(packetName) -> always when you create a packet you need clear!


-- ### SQL FUNCTIONS ###

SQLConnect(string, User, Password)
SQLDisconnect()
SQLQuery(string)
SQLGetNumber(string)
SQLGetString(string)
SQLGetResult(value)
SQLGetSingle(string)
SQLFetch()
SQLClose()
ExecuteQuery(query)

-- ### SQL ASYNC FUNCTIONS ###

ConnectQueryAsync(string, User, Password)
CreateAsyncQuery(name, query, aIndex, Result)
QueryAsyncGetValue(name, column)
QueryAsyncDelete(name)