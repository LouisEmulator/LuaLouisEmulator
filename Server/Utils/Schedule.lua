Schedule = {}

local Handles = {}
local countCron = 1

local jobs = {}
local jobs_mt = {__index = jobs}

local STATE_WAIT = 1
local STATE_RUNNING = 2

local function checkPositiveInteger(name, value)
	if type(value) ~= "number" or value < 0 then
		error(name .. " precisa ser números!")
	end
end

function Schedule.SetDayAndHourAndMinute(Day, Hour, Minute, call, ...)
	if call == nil
	then
		return
	end
	
	checkPositiveInteger('Day', Day)
	checkPositiveInteger('Hour', Hour)

	Handles[countCron] = {state = STATE_WAIT, dayofweek = -1, day = Day, hour = Hour, minute = Minute, callback = call, args = {...}}
	countCron = countCron + 1
end

function Schedule.SetHourAndMinute(Hour, Minute, call, ...)
	if call == nil
	then
		return
	end
	
	checkPositiveInteger('Hour', Hour)
	checkPositiveInteger('Minute', Minute)
	
	Handles[countCron] = {state = STATE_WAIT, dayofweek = -1, day = -1, hour = Hour, minute = Minute, callback = call, args = {...}}
	countCron = countCron + 1
end

function Schedule.SetDayOfWeek(DayOfWeek, Hour, Minute, call, ...)
	if call == nil
	then
		return
	end
	
	checkPositiveInteger('DayOfWeek', DayOfWeek)
	checkPositiveInteger('Hour', Hour)
	checkPositiveInteger('Minute', Minute)
	
	Handles[countCron] = {state = STATE_WAIT, dayofweek = DayOfWeek, day = -1, hour = Hour, minute = Minute, callback = call, args = {...}}
	countCron = countCron + 1
end

function Schedule.GetScheduler(DayOfWeek, Day, Hour, Minute)
	if DayOfWeek ~= -1
	then
		if tonumber(DayOfWeek) ~= tonumber(os.date("%w"))
		then
			return false
		end
	end
	
	if Day ~= -1
	then
		if tonumber(Day) ~= tonumber(os.date("%d"))
		then
			return false
		end
	end

	if tonumber(Hour) ~= tonumber(os.date("%H"))
	then
		return false
	end
	
	if tonumber(Minute) ~= tonumber(os.date("%M"))
	then
		return false
	end
	
	return true
end

function Schedule.Running()
	for i in pairs(Handles) do
		if Schedule.GetScheduler(Handles[i].dayofweek, Handles[i].day, Handles[i].hour, Handles[i].minute) == true
		then
			if Handles[i].state == STATE_WAIT
			then
				Handles[i].callback(unpack(Handles[i].args))
				Handles[i].state = STATE_RUNNING
			end
		else
			if Handles[i].state == STATE_RUNNING
			then
				Handles[i].state = STATE_WAIT
			end
		end
	end
end

Timer.Interval(1, Schedule.Running)

return Schedule