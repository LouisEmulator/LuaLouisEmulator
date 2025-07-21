-- ### BASE FUNCTIONS ###
GetMaxIndex()			return MAX_OBJECT
GetMinUserIndex()		return OBJECT_START_USER
GetMaxUserIndex()		return (OBJECT_START_USER+MAX_OBJECT_USER)
GetMinMonsterIndex()	return OBJECT_START_MONSTER
GetMaxMonsterIndex()	return (OBJECT_START_MONSTER+MAX_OBJECT_MONSTER)
GetGameServerCode()		return gServerInfo.m_ServerCode
GetGameServerVersion()	return GAMESERVER_UPDATE
GetGameServerProtocol()	return GAMESERVER_LANGUAGE
GetGameServerCurUser()	return gObjTotalUser
GetGameServerMaxUser()	return Server Max User
GET_ITEM(aValue,bValue)  return GET_ITEM(aValue,bValue)
GetLicenseCustomerName() return CustomerName
GetObjectConnected(aIndex) return 
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
EffectAdd(aIndex,type,effectindex,count,value1,value2,value3,value4)
EffectDel(aIndex,effectindex)
EffectCheck(aIndex,effectindex)
EffectClear(aIndex)
FireworksSend(aIndex,PosX,PosY)
InventoryGetWearSize() return INVENTORY_WEAR_SIZE
InventoryGetMainSize() return INVENTORY_MAIN_SIZE
InventoryGetFullSize() return INVENTORY_FULL_SIZE
InventoryGetItemTable(aIndex,Slot)
InventoryGetItemIndex(aIndex,Slot)
InventoryGetItemCount(aIndex,Slot,ItemLevel)
InventoryDelItemIndex(aIndex,Slot)
InventoryDelItemCount(aIndex,ItemIndex,level,luck,skill,count)
InventoryGetFreeSlotCount(aIndex)
InventoryCheckSpaceByItem(aIndex,ItemIndex)
InventoryCheckSpaceBySize(aIndex,Width,Height)
ItemDrop(aIndex,aIndex,map,x,y,SpecialValue)
ItemDropEx(aIndex,Map,PosX,PosY,ItemIndex,ItemLevel,ItemDurability,ItemOption1,ItemOption2,ItemOption3,ItemNewOption,ItemSetOption,ItemJewelOfHarmonyOption,ItemItemOptionEx,ItemSocketOption1,ItemSocketOption2,ItemSocketOption3,ItemSocketOption4,ItemSocketOption5,ItemSocketOptionBonus,ItemDuration,OwneraIndex)
ItemGive(aIndex,SpecialValue)
ItemGiveEx(aIndex,ItemIndex,ItemLevel,ItemDurability,ItemOption1,ItemOption2,ItemOption3,ItemNewOption,ItemSetOption,ItemJewelOfHarmonyOption,ItemItemOptionEx,ItemSocketOption1,ItemSocketOption2,ItemSocketOption3,ItemSocketOption4,ItemSocketOption5,ItemSocketOptionBonus,ItemDuration)
MapGetItemTable(aIndex,Slot) -- SLOT = 0 to 299
LevelUpSend(aIndex)
LogPrint(string)
LogColor(aValue,string) 
MapCheckAttr(Map,X,Y,ATTR)
MasterLevelUpSend(aIndex)
MasterSkillTreeRebuild(aIndex,type) -- Type = 0 rebuild all master skill
MessageGet(aValue)
MessageGetByUserLang(MessageNumber,aIndex)
MessageGetByLang(MessageNumber,Lang)
MoneySend(aIndex)
MonsterCreate(MonsterIndex,MapNumber,MapX,MapY,MonsterDir)
MonsterDelete(aIndex)
MonsterSummonCreate(aIndex,MonsterIndex,LifeRate,DefenseRate,DefenseSuccessRate,DamageRate,AttackSuccessRate)
MonsterSummonDelete(aIndex)
MoveUser(aIndex,GateNumber)
MoveUserEx(aIndex,MapNumber,MapX,MapY)
MessageSend(aIndex,aValue,bValue,string)
MessageSendToAll(aValue,bValue,string)
NoticeSend(aIndex,aValue,string)
NoticeSendToAll(aValue,string)
NoticeGlobalSend(aValue,string)
PartyGetMemberCount(PartyNumber)
PartyGetMemberIndex(PartyNumber,Slot) -- Slot 0 to 9
PartyAddMember(PartyIndex,aIndex) return true false
PartyDelMember(PartyIndex,aIndex) return true false
ObjectGetCoin(aIndex)
ObjectAddCoin(aIndex,Coin1,Coin2,Coin3)
ObjectSubCoin(aIndex,Coin1,Coin2,Coin3)
PermissionCheck(aIndex,aValue) -- Louis emulator system just have Lock/Unlock account
PermissionInsert(aIndex,aValue) -- Louis emulator system just have Lock/Unlock account
PermissionRemove(aIndex,aValue) -- Louis emulator system just have Lock/Unlock account
PKLevelSend(aIndex,PkLevel) -- 1 hero, 3 common, 6 murder
PostSend(PostType,MessageNumber,CharacterName,Text) 
QuestStateCheck(aIndex,QuestIndex)
RandomGetNumber(Value)
SkinChangeSend(aIndex,SkinNumber)
UserDisconnect(aIndex)
UserGameLogout(aIndex,CloseType)
UserCalcAttribute(aIndex)
UserInfoSend(aIndex)
UserActionSend(aIndex,bIndex,Action)
UserSetAccountLevel(aIndex,AccountLevel,ExpireTime)
DumpStack()
SetExpRate(aIndex,ExperienceRate)
GetExpRate(aIndex) return integer
SetObjectSkillBlockTime(aIndex,skill,time) --time in seconds
ObjectAddExperience(aIndex,Experience,MaxLevelUp)
AddItemToGremoryCase(aIndex, GremoryType, GremoryNumber, ItemIndex, ItemLevel, ItemDurability, ItemOption1, ItemOption2, ItemOption3, NewOption, SetOption, JewelOfHarmonyOption, ItemOptionEx, SocketOption1, SocketOption2, SocketOption3, SocketOption4, SocketOption5, SocketBonus, Duration)
GetMonsterTopHitDamageUser(aIndex) return object index
MuHelperStart(aIndex)
MuHelperStop(aIndex)
-- UPDATE 41 + --
SetObjectLife(aIndex)
SetObjectAddLife(aIndex)
SetObjectMaxLife(aIndex)
SetObjectReset(aIndex)
AddObjectReset(aIndex)
SetObjectMasterReset(aIndex)
AddObjectMasterReset(aIndex)

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