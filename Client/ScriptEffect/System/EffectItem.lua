
BridgeFunctionAttach('ItemEffect','SetItemEffect')

local TIMEEFFECT = 0

function SetItemEffect(ItemIndex,BmdModel,VecPosX,VecPosY,VecPosZ,ObjItem,ObjModelIndex)

	if(ItemIndex == 10) then 
		if math.random(0,2) == 0 then
			--ConsoleEffect(1,ObjModelIndex)
			local LightR = (math.random(0,90)+10)*0.01
			local LightG = (math.random(0,90)+10)*0.01
			local LightB = (math.random(0,90)+10)*0.01
			local Scale = (math.random(0,5)+5)*0.1

			local RelativePosX = 0.0
			local RelativePosY = 0.0
			local RelativePosZ = 0.0

			RelativePosX = -5+(math.random(0,1000)-500)*0.01
			RelativePosZ = (math.random(0,300)-150)*0.11

			TransformPosition(BmdModel,1,RelativePosX,RelativePosY,RelativePosZ,1);
			CreateParticle(32002, 13, Scale, LightR, LightG, LightB, ObjModelIndex,BmdModel);
			--CreateParticle(32002, 12, (Scale*0.1), LightR, LightG, LightB, ObjModelIndex,BmdModel)

			--local LightR2 = 0.90
			--local LightG2 = 0.00
			--local LightB2 = 0.90

			--for i = 0, 10 do
			--	TransformByObjectBone(BmdModel,ObjItem,i);
			--	CreateParticle(32002, 13, Scale, LightR2, LightG2, LightB2, ObjModelIndex,BmdModel)
			--end
		end
	end

	if ItemIndex == 9 then 
		if TIMEEFFECT <= 0 then
  			local ColorRandomR = (math.random(0,100) / 100)
			local ColorRandomG = (math.random(0,100) / 100)
			local ColorRandomB = (math.random(0,100) / 100)

			TransformPosition(BmdModel,-1,0.0,0.0,0.0,0)
 			CreateEffect(32378, 2, ColorRandomR, ColorRandomG, ColorRandomB, ObjModelIndex, 0.6)
			TIMEEFFECT = 50
		end
		TIMEEFFECT = TIMEEFFECT - 1

	end

	if ItemIndex == 27 or ItemIndex == 26 then 
		--if math.random(0,1) == 0 then
			--ConsoleEffect(1,ObjModelIndex)
			local LightR = 2.50
			local LightG = 0.00
			local LightB = 0.99

			local RelativePosX = 0.0
			local RelativePosY = 0.0
			local RelativePosZ = 0.0

			local MapTime = MapTime()*0.01

			for i = 0, 10 do
				TransformByObjectBone(BmdModel,ObjItem,i)
				CreateSprite(32131, 1.0, LightR, LightG, LightB, ObjModelIndex, 0.0, 0)
			end

			for i = 0, 7 do
				TransformByObjectBone(BmdModel,ObjItem,i)
				CreateSprite(32002, 1.5, LightR, LightG, LightB, ObjModelIndex, 0.0, 0)
			end

			--for i = 0, 7 do
			--	TransformByObjectBone(BmdModel,ObjItem,i)
			--	CreateSprite(32049, 1.5, LightR, LightG, LightB, ObjModelIndex, 0.0, 0)
			--end
			
			local Scale = 0.7;
			local LightR2 = 0.90
			local LightG2 = 0.00
			local LightB2 = 0.90

			for i = 0, 10 do
				TransformByObjectBone(BmdModel,ObjItem,i)
				CreateParticle(32002, 13, Scale, LightR2, LightG2, LightB2, ObjModelIndex,BmdModel)
			end
		--end
	end
end