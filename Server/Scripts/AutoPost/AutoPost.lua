local CONFIG = require("Scripts\\AutoPost\\Config")

BridgeFunctionAttach('OnCommandManager','AutoPostCommand')
BridgeFunctionAttach('OnCharacterClose','AutoPostPlayerLoggout')

local AutoPost = {}
local AUTO_POST_USER_DATE = {}

function AutoPostCommand(aIndex, Arguments)

	if CONFIG.Enable == 0 then return 0 end

	local Command = CommandGetArgString(Arguments,0)

	if not (Command == CONFIG.Command) then
		return 0
	end

	local Language = GetObjectLanguage(aIndex)
	local AccountLevel = GetObjectAccountLevel(aIndex)

	if AUTO_POST_USER_DATE[aIndex] then
		if AUTO_POST_USER_DATE[aIndex] then
			MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[2][Language]))
			AUTO_POST_USER_DATE[aIndex] = nil
		end
		return 1
	end

	local post_string = CommandGetArgString(Arguments,1)

	if post_string == "" then return 0 end

	if GetObjectLevel(aIndex) < CONFIG.Level
	then
		MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[3][Language], CONFIG.Level))
		return 1
	end
	
	local money = GetObjectMoney(aIndex)
	
	if money < CONFIG.Money
	then
		MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[4][Language], CONFIG.Money))
		return 1
	end
	
	if CONFIG.EnableVip[AccountLevel+1] < 1
	then
		MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[5][Language]))
		return 1
	end
	
	if GetObjectReset(aIndex) < CONFIG.Reset
	then
		MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[6][Language], CONFIG.Reset))
		return 1
	end
	
	if GetObjectMasterReset(aIndex) < CONFIG.MasterReset
	then
		MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[7][Language], CONFIG.MasterReset))
		return 1
	end
	
	local setmoney = money - CONFIG.Money
	
	SetObjectMoney(aIndex,setmoney)
	MoneySend(aIndex)
	
	local Playername = GetObjectName(aIndex)
	AUTO_POST_USER_DATE[aIndex] = {playerName = Playername, timer = CONFIG.Timer, text = post_string}
	
	PostSend(CONFIG.PostColor,69,Playername,string.format(post_string))

	MessageSend(aIndex, 1, 0, string.format(CONFIG.MESSAGES[1][Language]))

	return 0
end

function AutoPost.MainProc()
	for key in pairs(AUTO_POST_USER_DATE) do
		local autoPost = AUTO_POST_USER_DATE[key]

		autoPost.timer = autoPost.timer - 1

		if autoPost.timer <= 0
		then
			PostSend(CONFIG.PostColor,69,autoPost.playerName,string.format(autoPost.text))
			autoPost.timer = CONFIG.Timer
		end
	end
end

function AutoPostPlayerLoggout(aIndex)
	if AUTO_POST_USER_DATE[aIndex]
	then
		AUTO_POST_USER_DATE[aIndex] = nil
	end
end

Timer.Interval(1, AutoPost.MainProc)
