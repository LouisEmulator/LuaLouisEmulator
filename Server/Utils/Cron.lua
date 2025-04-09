BridgeFunctionAttach('OnTimerThread','TimerSystem')

Timer = {}

local Handles = {}
local id = 0

unpack = unpack and unpack or table.unpack

function Timer.RunRepeat(timer)
	timer.running = timer.running + 1

	if timer.running < timer.timerRun
	then 
		return false
	end
	
	timer.count = timer.count - 1
	
	if timer.count == 0
	then
		return true
	end
	
	timer.running = 0
	timer.callback(unpack(timer.args))
	return false
end

function Timer.RunInterval(timer)
	timer.running = timer.running + 1

	if timer.running < timer.timerRun
	then 
		return false
	end
	
	timer.running = 0
	timer.callback(unpack(timer.args))
	return false
end

function Timer.RunTimerOut(timer)
	if timer.running >= timer.timerRun 
	then 
		return false
	end

	timer.running = timer.running + 1

	if timer.running >= timer.timerRun 
	then
		timer.callback(unpack(timer.args))
		return true
	end
	
	return false
end

function Timer.Repeater(timer, counts, call, ...)
	if call == nil
	then
		return -1
	end
	
	id = id + 1
	Handles[id] = { timerRun = timer, callback = call, args = {...}, running = 0, count = counts + 2, update = Timer.RunRepeat, number = id }
	return id
end

function Timer.Interval(timer, call, ...)
	if call == nil
	then
		return -1
	end
	
	id = id + 1
	Handles[id] = { timerRun = timer, callback = call, args = {...}, running = 0, count = 0, update = Timer.RunInterval, number = id }
	return id
end

function Timer.TimeOut(timer, call, ...)
	if call == nil
	then
		return -1
	end
	
	id = id + 1
	Handles[id] = { timerRun = timer, callback = call, args = {...}, running = 0, count = 0, update = Timer.RunTimerOut, number = id }
	return id
end

function Timer.Cancel(id)
	if id == -1 or id == nil
	then
		return
	end
	
	if Handles[id] ~= nil
	then
		Handles[id] = nil
	end
end

function Timer.Update()
	for i in pairs(Handles) do
		if Handles[i] == nil
		then
			goto continue
		end
		
		if Handles[i].update ~= nil
		then
			if Handles[i].update(Handles[i]) == true
			then
				Handles[i] = nil
			end
		end
		
		::continue::
	end
end

function TimerSystem()
	Timer.Update()
end

return Timer