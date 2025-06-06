local CONFIG = require("Scripts\\WindowTitle\\Config")

BridgeFunctionAttach('MainProcThread','WindowTitleMainProc')

local TimeToUpdate = 0

function WindowTitleMainProc()

	TimeToUpdate = TimeToUpdate + 1
	if TimeToUpdate > 60 and GetMainScene() == 5 then
		TimeToUpdate = 0

		local StringWindowTitle = CONFIG.ServerName

		if(CONFIG.EnableName == 1) then 
			StringWindowTitle = StringWindowTitle .. " || " .. UserGetName() .. " || " .. tostring(UserGetLevel())
		end

		SetWindowTitle(StringWindowTitle)
	end
end


