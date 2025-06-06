local CONFIG = require("Scripts\\NewWindow\\Config")

BridgeFunctionAttach('MainInterfaceProcThread','NewWindowInterface')
BridgeFunctionAttach('KeyboardEvent','NewWindowKeyListener')
--BridgeFunctionAttach('ScrollMouseEvent','ScrollMouse')
--BridgeFunctionAttach('RightClickEvent','InterfaceClickRightEvent')
--BridgeFunctionAttach('LeftClickEvent','InterfaceLeftClickEvent')
BridgeFunctionAttach('UpdateMouseEvent','NewWindowUpdateMouse')
BridgeFunctionAttach('UpdateKeyEvent','NewWindowUpdateKey')

NewWindow = {}

function NewWindow.Open()
	if	CheckWindowOpen(UIFriendList)		== 1	then	return							end
	if	CheckWindowOpen(UIMoveList)			== 1	then	return							end
	if	CheckWindowOpen(UIParty)			== 1	then	CloseWindow(UIParty)			end
	if	CheckWindowOpen(UIQuest)			== 1	then	return							end
	if	CheckWindowOpen(UIGuild)			== 1	then	CloseWindow(UIGuild)			end
	if	CheckWindowOpen(UIGuildNpc)			== 1	then	CloseWindow(UIGuildNpc)			end
	if	CheckWindowOpen(UITrade)			== 1	then	return							end
	if	CheckWindowOpen(UIWarehouse)		== 1	then	return							end
	if	CheckWindowOpen(UICommandWindow)	== 1	then	return							end
	if	CheckWindowOpen(UIPetInfo)			== 1	then	return							end
	if	CheckWindowOpen(UIShop)				== 1	then	return							end
	if	CheckWindowOpen(UIStore)			== 1	then	return							end
	if	CheckWindowOpen(UIOtherStore)		== 1	then	CloseWindow(UIOtherStore)		end
	if	CheckWindowOpen(UICharacter)		== 1	then	CloseWindow(UICharacter)		end
	if	CheckWindowOpen(UIOptions)			== 1	then	return							end
	if	CheckWindowOpen(UIHelp)				== 1	then	return							end
	if	CheckWindowOpen(UIFastDial)			== 1	then	return							end
	if	CheckWindowOpen(UISkillTree)		== 1	then	return							end
	if	CheckWindowOpen(UINPC_Titus)		== 1	then	return							end
	if	CheckWindowOpen(UICashShop)			== 1	then	return							end
	if	CheckWindowOpen(UIFullMap)			== 1	then	return							end
	if	CheckWindowOpen(UINPC_Dialog)		== 1	then	return							end
	if	CheckWindowOpen(UIGensInfo)			== 1	then	CloseWindow(UIGensInfo)			end

	OpenWindow(UIInventory)
	UICustomInterface = CONFIG.WindowID
end

function NewWindow.Close()
	UICustomInterface = 0
	CloseWindow(UIInventory)
end

function NewWindow.CheckOpen()
	if UICustomInterface == CONFIG.WindowID then return true else return false end
end

function NewWindow.CreateButton(ButtonID, x, y, w, h)
	if CONFIG.Button[ButtonID] == nil then
		table.insert(CONFIG.Button, ButtonID)
		CONFIG.Button[ButtonID] = {
			x = x,
			y = y,
			w = w,
			h = h,
			clicked = false,
			timer = 0
		}
	else
		CONFIG.Button[ButtonID].x = x
		CONFIG.Button[ButtonID].y = y
		CONFIG.Button[ButtonID].w = w
		CONFIG.Button[ButtonID].h = h
	end
end

function NewWindow.ButtonClicked(ButtonID)
	if CONFIG.Button[ButtonID] == nil then return false end
	if CONFIG.Button[ButtonID].clicked then
		if CONFIG.Button[ButtonID].timer >= 2 then
			CONFIG.Button[ButtonID].timer = 0
			CONFIG.Button[ButtonID].clicked = false
			return false
		end
			CONFIG.Button[ButtonID].timer = CONFIG.Button[ButtonID].timer + 1
		return true
	end
	return false
end

function NewWindow.ButtonMouseOver(ButtonID, x, y)
	if CONFIG.Button[ButtonID] == nil then return false end
	if x >= CONFIG.Button[ButtonID].x and x <= (CONFIG.Button[ButtonID].x+CONFIG.Button[ButtonID].w) then
		if y >= CONFIG.Button[ButtonID].y and y <= (CONFIG.Button[ButtonID].y+CONFIG.Button[ButtonID].h) then
			return true
		end
	end
	return false
end

local MonsterLoad = {} 

function NewWindowInterface()
	local posX = GetWideX()
	local base = 260 + 120

	if not NewWindow.CheckOpen() then return end

		if	CheckWindowOpen(UIFriendList) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIMoveList)			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIParty) 			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIQuest) 			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIGuild) 			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIGuildNpc) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UITrade) 			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIWarehouse) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UICommandWindow) 	== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIPetInfo)	 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIShop)				== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIStore)			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIOtherStore) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UICharacter) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIOptions) 			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIHelp)				== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIFastDial)			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UISkillTree) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UINPC_Titus) 		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UICashShop)			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIFullMap) 			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UINPC_Dialog)		== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UIGensInfo)			== 1	then	NewWindow.Close()	end
		if	CheckWindowOpen(UINPC_Julia)		== 1	then	NewWindow.Close()	end

		local PosXWindow = GetWideX() -275

		RenderImage(31322, PosXWindow, 0, 190, 428)
		RenderImage(31353, PosXWindow, 0, 190, 64)
		RenderImage(31355, PosXWindow, 64, 21, 320)
		RenderImage(31356, PosXWindow + 169, 64, 21, 320)
		RenderImage(31357, PosXWindow, 384, 190, 45)

		RenderImage2(40000, PosXWindow - 170, 100, 150, 120, 0.0, 0.0, 1.0, 1.0, 1, 1, 0) -- Render image + load image test

		SetFontType(1)
		SetTextColor(255, 255, 255, 255)
		RenderText5(PosXWindow, 12, string.format(CONFIG.MESSAGES[1][GetLanguage()]), 190, 3)
		
		-- BUTTON CLOSE --
		NewWindow.CreateButton(CONFIG.ButtonID.fechar, PosXWindow + 190 - 20, 6, 14, 14) 	
		
		if NewWindow.ButtonMouseOver(CONFIG.ButtonID.fechar, MousePosX(), MousePosY()) then
			DrawTooltip((PosXWindow + 190 - 40), 20,string.format(CONFIG.MESSAGES[2][GetLanguage()]))

			if NewWindow.ButtonClicked(CONFIG.ButtonID.fechar) then
				NewWindow.Close()
				CONFIG.Button[CONFIG.ButtonID.fechar].clicked = false
			end
		end


		-- BUTTON OK --
		NewWindow.CreateButton(CONFIG.ButtonID.ok, PosXWindow + 48, 165, 110, 25)	

		if NewWindow.ButtonMouseOver(CONFIG.ButtonID.ok, MousePosX(), MousePosY()) then
			RenderImage2(31326, PosXWindow + 48, 165, 110, 25,0, 0.2264566, 1.0, 0.2245212, 1, 1, 1.0)

			if NewWindow.ButtonClicked(CONFIG.ButtonID.ok) then
				
				CONFIG.Button[CONFIG.ButtonID.ok].clicked = false
			end
		else
			RenderImage2(31326, PosXWindow + 48, 165, 110, 25,0, 0, 1.0, 0.2245212, 1, 1, 1.0)
		end

		SetFontType(1)
		SetTextColor(255, 255, 255, 255)
		SetTextBg(0,0,0,0)
		RenderText5(PosXWindow, 172, string.format(CONFIG.MESSAGES[1][GetLanguage()]), 190, 3)

		RenderImage2(40001, PosXWindow + 45, 200, 100, 100,0, 0, 1.0, 1.0, 1, 1, 1.0)

		--SHOW MONSTER INDEX 580 
		local MonsterIndex
		if MonsterLoad[580] == nil then
			MonsterIndex = LoadMonster(580)
		end
		RenderMonster(MonsterIndex,380,210,1.3)

end

function NewWindowKeyListener(key)
	if CheckWindowOpen(UIChatWindow) == 1 then return false end

	if key == Keys.L then

		--DOWNLOAD DATATABLE
		local url = "https://jogandomu.com.br/teste.json"

		local Datatable = GetUrlData(url)
	
		if Datatable then
			Datatable = json.decode(Datatable)
			Console(3,Datatable.code)

			local FileName = "Data//teste.png"
			--MAKE FILE 
			if Base64ImageToFile(FileName,Datatable.image) then
				--LOAD IMAGE
				if LoadPngImage(40001,FileName) then
					--OPEN WINDOW
					NewWindow.Open()
					Console(1,"Open new window")
				end
			end
		end
	end
		
	if not NewWindow.CheckOpen() then return false end

	if key == Keys.I or key == Keys.V then
		NewWindow.Close()
		return true
	end

	if key == Keys.Return then
		if CONFIG.AlertWindow.Show then
			CONFIG.AlertWindow.Show = false
			return true
		end
	end

	if key == Keys.Escape then
		if CONFIG.AlertWindow.Show then
			CONFIG.AlertWindow.Show = false
			return true
		else
			NewWindow.Close()
			return true
		end
	end
end

function NewWindowUpdateMouse()
	if NewWindow.CheckOpen() then
		--local posX = GetWideX() - 260
		--if MousePosX() < posX then
		--	DisableClickClient()
		--else
		--	if MousePosY() > 430 then
		--		DisableClickClient()
		--	end
		--end

		if CheckReleasedKey(Keys.LButton) == 1 then
			if NewWindow.ButtonMouseOver(CONFIG.ButtonID.fechar, MousePosX(), MousePosY()) then
				CONFIG.Button[CONFIG.ButtonID.fechar].clicked = true
				return
			end

			if NewWindow.ButtonMouseOver(CONFIG.ButtonID.ok, MousePosX(), MousePosY()) then
				CONFIG.Button[CONFIG.ButtonID.ok].clicked = true
				return
			end
		end
	end
end

function NewWindowUpdateKey()
	if not NewWindow.CheckOpen() then return end

	if CheckWindowOpen(UIChatWindow) == 1 then return end

	DisableClickClient()

	if CheckPressedKey(Keys.I) == 1 or CheckPressedKey(Keys.V) == 1 then
		NewWindow.Close()
		return
	end

	if CheckPressedKey(Keys.Return) == 1 then
		if CONFIG.AlertWindow.Show then
			CONFIG.AlertWindow.Show = false
			return
		end
	end

	if CheckPressedKey(Keys.Escape) == 1 then
		if CONFIG.AlertWindow.Show then
			CONFIG.AlertWindow.Show = false
			return true
		else
			NewWindow.Close()
			return true
		end
	end
end

--NewWindow.Init()