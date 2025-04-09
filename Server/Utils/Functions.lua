function get_script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*[/\\])")
end

function SendMessageAllByNumber(MessageNumber,...)

	local MessagePor = MessageGetByLang(MessageNumber,1)
	local MessageEng = MessageGetByLang(MessageNumber,2)
	local MessageSpn = MessageGetByLang(MessageNumber,3)
	
	local args = {...}

	for i = GetMinUserIndex(), GetMaxUserIndex(), 1 do
		local UserLang = GetObjectLanguage(i)
		if UserLang == "Eng" then 
			NoticeSend(i,0,string.format(MessageEng,table.unpack(args)))
		elseif UserLang == "Spn" then
			NoticeSend(i,0,string.format(MessageSpn,table.unpack(args)))
		else 
			NoticeSend(i,0,string.format(MessagePor,table.unpack(args)))
		end
	end
end

function string:split(sSeparator, nMax, bRegexp)
   assert(sSeparator ~= '')
   assert(nMax == nil or nMax >= 1)

   local aRecord = {}

   if self:len() > 0 then
      local bPlain = not bRegexp
      nMax = nMax or -1

      local nField, nStart = 1, 1
      local nFirst,nLast = self:find(sSeparator, nStart, bPlain)
      while nFirst and nMax ~= 0 do
         aRecord[nField] = self:sub(nStart, nFirst-1)
         nField = nField+1
         nStart = nLast+1
         nFirst,nLast = self:find(sSeparator, nStart, bPlain)
         nMax = nMax-1
      end
      aRecord[nField] = self:sub(nStart)
   end

   return aRecord
end
