-- ### BASE FUNCTIONS ###
Console(Color,Text)
RenderMessage(Text,Type)
LoadBitmap(Path,ImagemID)
LoadSound(SoundID,Folder)
PlaySound(SoundID,Stop)
MousePosX() return int
MousePosY() return int
MouseLButton() return int
MouseRButton() return int
CheckMouseIn(PosX,PosY,Width,Height) return int
GetMainResolution() return int
GetMainScene() return int
GetCharacterMap() return int
CheckWindowOpen() return int
CharacterLockAction(Lock)
SetWindowTitle(Title)
GetPlayerIndex() return int
GetViewReset() return int
GetViewMasterReset() return int
GetViewAccountLevel() return int
GetViewFruitValue() return int
GetViewStatsPoint() return int
GetViewCurHP() return int
GetViewMaxHP() return int
GetViewCurMP() return int
GetViewMaxMP() return int
GetViewCurBP() return int
GetViewMaxBP() return int
GetViewCurSD() return int
GetViewMaxSD() return int
GetViewDamageHP() return int
GetViewDamageSD() return int
GetViewDamageTable1() return int
GetViewDamageTable2() return int
GetViewDamageTable3() return int
GetViewDamageTable4() return int
GetViewDamageCount() return int
GetViewDamageValue() return int
GetViewExperience() return int64
GetViewNextExperience() return int64
GetViewBaseExperience() return int64
GetViewMasterExperience() return int64
GetViewMasterNextExperience() return int64
GetViewExtInvetory() return int
GetViewStrength() return int
GetViewDexterity() return int
GetViewVitality() return int
GetViewEnergy() return int
GetViewLeadership() return int
GetViewPhysiDamageMin() return int
GetViewPhysiDamageMax() return int
GetViewMagicDamageMin() return int
GetViewMagicDamageMax() return int
GetViewCurseDamageMin() return int
GetViewCurseDamageMax() return int
GetViewMulPhysiDamage() return int
GetViewDivPhysiDamage() return int
GetViewMulMagicDamage() return int
GetViewDivMagicDamage() return int
GetViewMulCurseDamage() return int
GetViewDivCurseDamage() return int
GetViewMagicDamageRate() return int
GetViewCurseDamageRate() return int
GetViewPhysiSpeed() return int
GetViewMagicSpeed() return int
GetViewAttackSuccessRate() return int
GetViewAttackSuccessRatePvP() return int
GetViewDefense() return int
GetViewDefenseSuccessRate() return int
GetViewDefenseSuccessRatePvP() return int
GetViewDamageMultiplier() return int
GetViewDamageMultiplier() return int
GetViewRFDamageMultiplierA() return int
GetViewRFDamageMultiplierB() return int
GetViewRFDamageMultiplierC() return int
GetViewDarkSpiritAttackDamageMin() return int
GetViewDarkSpiritAttackDamageMax() return int
GetViewDarkSpiritAttackSpeed() return int
GetViewDarkSpiritAttackSuccessRate() return int
GetViewRFSkillDamage1() return int
GetViewRFSkillDamage2() return int
GetViewRFSkillDamage3() return int
GetViewDLSkillDamage1() return int
GetViewDLSkillDamage2() return int
GetViewDLSkillDamage3() return int
GetViewFenrirSkillDamage() return int
GetViewBonusSkillDamage() return int
GetViewBonusCriticalDamage() return int
GetViewBonusExcellentDamage() return int
GetDamageRatePvMGeneral() return int
GetDamageRatePvMClass() return int
GetDamageRatePvPGeneral() return int
GetDamageRatePvPClass() return int
GetDamageRatePvPClassXClass() return int
GetAddCriticalDamageRate() return int
GetAddExcellentDamageRate() return int
GetCoin1() return int
GetCoin2() return int
GetCoin3() return int


-- ### USER FUNCTIONS ###
UserGetMap() return integer
UserGetName() return string
UserGetIndex() return integer
UserPositionX() return integer
UserPositionY() return integer
UserGetHelper() return integer
UserGetWing() return integer
UserGetSword() return integer
UserGetShield() return integer
UserUserGetHelm() return integer
UserGetArmor() return integer
UserGetPants() return integer
UserGetGloves() return integer
UserGetBoots() return integer
UserGetLevel() return integer
UserGetClass() return integer
UserGetGuild() return integer
GuildGetName() return string

-- ### CHARACTER FUNCTIONS ###
CharacterGetName(int arrayIndex) return string
CharacterGetIndex(int arrayIndex) return integer
CharacterGetIsLive(int arrayIndex) return integer
CharacterGetType(int arrayIndex) return integer
CharacterGetX(int arrayIndex) return integer
CharacterGetY(int arrayIndex) return integer
CharacterGetHelper(int arrayIndex) return integer
CharacterGetWing(int arrayIndex) return integer
CharacterGetSword(int arrayIndex) return integer
CharacterGetShield(int arrayIndex) return integer
CharacterGetHelm(int arrayIndex) return integer
CharacterGetArmor(int arrayIndex) return integer
CharacterGetPants(int arrayIndex) return integer
CharacterGetGloves(int arrayIndex) return integer
CharacterGetBoots(int arrayIndex) return integer
CharacterGetLevel(int arrayIndex) return integer
CharacterGetClass(int arrayIndex) return integer
CharacterGetGuild(int arrayIndex) return integer
CharacterGuildGetName(int arrayIndex) return string
SendPlayerChat(string aValue)
FindCharacterStack(int index) return integer
GetSelectedHero() return integer
SetSelectedHero(int value)
GetTargetCharacter() return integer
SetTargetCharacter(int value)
SendTradePlayer(int index)
SendPartyPlayer(int index)
SendGuildPlayer(int index)
SendShopPlayer(int index)
CharacterGetPositionX(int arrayIndex) return float
CharacterSetPositionX(int arrayIndex, float value)
CharacterGetPositionY(int arrayIndex) return float
CharacterSetPositionY(int arrayIndex, float value)
CharacterGetPositionZ(int arrayIndex) return float
CharacterSetPositionZ(int arrayIndex, float value)
CharacterGetAngleX(int arrayIndex) return float
CharacterSetAngleX(int arrayIndex, float value)
CharacterGetAngleY(int arrayIndex) return float
CharacterSetAngleY(int arrayIndex, float value)
CharacterGetAngleZ(int arrayIndex) return float
CharacterSetAngleZ(int arrayIndex, float value) 
CharacterSetScale(int arrayIndex, float value)
GetClassName(int Class) return string
CharacterGetGuildStatus(int arrayIndex) return integer
CharacterGetVisible(int arrayIndex) return integer
SetCharacterAction(int arrayIndex, int animation)
CharacterGetFullClass(int arrayIndex) return integer

-- ### INTERFACE FUNCTIONS ###
RenderImage(int imageID, float x, float y, float width, float height)
MousePosX() return integer 
MousePosY() return integer 
glColor3f(float r, float g, float b)
glColor4f(float r, float g, float b, float a)
DisableAlphaBlend()
pSetBlend(int aValue) --EnableAlphaTest
DrawBar(float x, float y, float w, float h)
EndDrawBar()
SetFontType(int font)
SetFontBg(int r, int g, int b, int a)
SetTextColor(int r, int g, int b, int a)
RenderText(int x, int y, char* text, int width, int sort)
RenderImage(int imageIndex, float x, float y, float w, float h)
RenderBitmap(int Texture, float x, float y, float w, float h, float u, float v, float uWidth, float vHeight, int Scale, int StartScale, float Alpha)
RenderImageScale(int Texture, float x, float y, float w, float h, float u, float v, float uWidth, float vHeight, float Alpha)
CheckIsRepeatKey(int Key) return integer 
CheckPressedKey(int Key) return integer 
CheckReleasedKey(int Key) return integer 
CheckWindowOpen(int Key) return integer 
CloseWindow(int Key)
OpenWindow(int Key)
ResetMouseL()
ResetMouseR()
DisableCLick()
CheckClickClient() return integer 
GetWindowWidth() return integer 
GetWindowHeight() return integer 
GetImageWidth(int texture) return float 
GetImageHeight(int texture) return float 
ItemByteConvert(BYTE* lpMsg, int ItemIndex, int Level, int dur, int Op1, int Op2, int Op3, int Exc, int Ancient, int JoH, int Socket, BYTE Sock1, BYTE Sock2, BYTE Sock3, BYTE Sock4, BYTE Sock5)
RenderTooltipComplete(int x, int y, int ItemIndex, int Level, int dur, int Op1, int Op2, int Op3, int Exc, int Ancient, int JoH, int Socket, int Sock1, int Sock2, int Sock3, int Sock4, int Sock5)
RenderTooltip(int aValue,int bValue,int cValue,int dValue,int eValue,int fValue,int gValue,int hValue,int iValue,int jValue)
RenderItem(float sx, float sy, float w, float h, int Type, int Level, int Option1, int ExtOption,int Rotate)
SendMessageClient(char* text)
LockPlayerWalk()
UnlockPlayerWalk()
DrawTooltip(int x, int y, char* text)
SetLockInterfaces()
SetUnlockInterfaces()
LuaGetLanguage() return string
PlaySound(int id)
StopSound(int id)
GLSwitchBlend()
GLSwitch()
GetWideX() return integer 
GetWindowWidthAdd() return integer 
RenderText2(int aValue,int bValue,std::string cValue,int dValue,int eValue)


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
