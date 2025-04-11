DataBase = {}

SQL_NO_DATA = 100

function DataBase.Connect(iType,ODBC,User,Password)
	if SQLConnect(ODBC,User,Password) == 0
	then
		LogColor(2,string.format("Couldn't connect to database"))
	else
		LogColor(1,string.format("Connected to database"))
		
		DataBase.Init()

		DataBase.CallRunAfterLoad()
	end

	--Connect Sql Async
	if ConnectQueryAsync(ODBC,User,Password) == 0
	then
		LogColor(2,string.format("Couldn't connect to database Async"))
	else
		LogColor(1,string.format("Connected to Async database"))
	end

	-- TESTE QUERY
	local Query = string.format("SELECT top 1 Name from character order by name desc", codigo, itemid)
	local ret = SQLQuery(Query)
	
	if ret == 0 then
		SQLClose()
		LogColor(2,string.format("No query DATA"))
		return
	end
	
	local nFecth = SQLFetch()

	if nFecth == 100 then
		SQLClose()
		LogColor(2,string.format("No query DATA"))
		return
	end

	local Name = SQLGetString("Name")
	SQLClose()

	LogColor(2,string.format("Teste query: %s",Name))

end

function DataBase.Init()
	--Criar todas as colunas para não haver problemas de SQL.
	
	--for i = 0 , #COLUMN_RESET do
    --DataBase.CreateColumn(TABLE_RESET, COLUMN_RESET[i], "INT NOT NULL DEFAULT 0")
	--end
	
	--for i = 0 , #COLUMN_MRESET do
	--DataBase.CreateColumn(TABLE_MRESET, COLUMN_MRESET[i], "INT NOT NULL DEFAULT 0")
	--end
	
	--for i = 0 , #COLUMN_PK do
	--DataBase.CreateColumn(TABLE_PK, COLUMN_PK[i], "INT NOT NULL DEFAULT 0")
	--end
	
	--for i = 0 , #COLUMN_HERO do
	--DataBase.CreateColumn(TABLE_HERO, COLUMN_HERO[i], "INT NOT NULL DEFAULT 0")
	--end
	
	--DataBase.CreateColumn(TABLE_VIP, COLUMN_VIP, "INT NOT NULL DEFAULT 0")
	
	--DataBase.CreateColumn(TABLE_REWARD_PLAYER, COLUMN_REWARD_PLAYER, "INT NOT NULL DEFAULT 0")
	
end

function DataBase.GetValue(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)
	ret = SQLQuery(Query)
	
	if ret == 0
	then
		LogPrint(string.format("Não foi possível executar a query: %s", Query))
		SQLClose()
		return 0
	end
	
	nRet = SQLFetch()
	
	if nRet == SQL_NO_DATA
	then
		LogPrint(string.format("Não foi possível executar a query: %s", Query))
		SQLClose()
		return 0
	end
	
	local val = SQLGetNumber(Column)
	SQLClose()
	return val
end

function DataBase.SetValue(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%d WHERE %s = '%s'", Table, Column, Value, Where, Name)

	ret = SQLQuery(Query)
	
	if ret == 0
	then
		LogPrint(string.format("N o foi poss vel executar a query: %s", Query))
		SQLClose()
		return
	end
	
	SQLClose()
end

function DataBase.SetAddValue(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)

	ret = SQLQuery(Query)
	
	if ret == 0
	then
		LogPrint(string.format("N o foi poss vel executar a query: %s", Query))
		SQLClose()
		return
	end
	
	SQLClose()
end

function DataBase.SetDecreaseValue(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)

	ret = SQLQuery(Query)
	
	if ret == 0
	then
		LogPrint(string.format("N o foi poss vel executar a query: %s", Query))
		SQLClose()
		return
	end
	
	SQLClose()
end

function DataBase.GetString(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)
	ret = SQLQuery(Query)
	
	if ret == 0
	then
		LogPrint(string.format("N o foi poss vel executar a query: %s", Query))
		SQLClose()
		return 'We could not find'
	end
	
	nRet = SQLFetch()
	if nRet == SQL_NO_DATA
	then
		LogPrint(string.format("N o foi poss vel executar a query: %s", Query))
		SQLClose()
		return 'We could not find'
	end
	
	local str = SQLGetString(Column)
	SQLClose()
	return str
end

function DataBase.SetString(Table, Column, String, Where, Name)
	local Query = string.format("UPDATE %s SET %s='%s' WHERE %s = '%s'", Table, Column, String, Where, Name)
	ret = SQLQuery(Query)
	
	if ret == 0
	then
		LogPrint(string.format("N o foi poss vel executar a query: %s", Query))
		SQLClose()
		return
	end
	
	SQLClose()
end


function DataBase.Query(Query)
	local ret = SQLQuery(Query)
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	SQLClose()
end

function DataBase.QueryGetString(Query, Column)
	local ret = SQLQuery(Query)
	local str = ""
	
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	else
		if SQLFetch() ~= 100 then
			str = SQLGetString(Column)
			SQLClose()
			return str
		end
	end
	
	SQLClose()
	return str
end

function DataBase.QueryGetNumber(Query, Column)
	local ret = SQLQuery(Query)
	local int = -1
	
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	else
		if SQLFetch() ~= 100 then
			int = SQLGetNumber(Column)
			SQLClose()
			return int
		end
	end
	
	SQLClose()
	return int
end

function DataBase.GetNumberByString(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)	
	local ret = SQLQuery(Query)
	local int = -1
	
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	else
		if SQLFetch() ~= 100 then
			int = SQLGetNumber(Column)
			SQLClose()
			return int
		end
	end
	
	SQLClose()
	return int
end

function DataBase.GetNumberByNumber(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = %d", Column, Table, Where, Name)	
	local ret = SQLQuery(Query)
	local int = -1
	
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	else
		if SQLFetch() ~= 100 then
			int = SQLGetNumber(Column)
			SQLClose()
			return int
		end
	end
	
	SQLClose()
	return int
end

function DataBase.SetNumberByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%d WHERE %s = '%s'", Table, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.SetNumberByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%d WHERE %s = %d", Table, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.GetStringByString(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = '%s'", Column, Table, Where, Name)	
	local ret = SQLQuery(Query)
	local int = ""
	
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	else
		if SQLFetch() ~= 100 then
			int = SQLGetString(Column)
			SQLClose()
			return int
		end
	end
	
	SQLClose()
	return int
end

function DataBase.GetStringByNumber(Table, Column, Where, Name)
	local Query = string.format("SELECT %s FROM %s WHERE %s = %d", Column, Table, Where, Name)	
	local ret = SQLQuery(Query)
	local int = ""
	
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	else
		if SQLFetch() ~= 100 then
			int = SQLGetString(Column)
			SQLClose()
			return int
		end
	end
	
	SQLClose()
	return int
end

function DataBase.SetStringByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s='%s' WHERE %s = '%s'", Table, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.SetStringByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s='%s' WHERE %s = %d", Table, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.AddNumberByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.AddNumberByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = %d", Table, Column, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.DecreaseNumberByString(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end

function DataBase.DecreaseNumberByNumber(Table, Column, Value, Where, Name)
	local Query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = %d", Table, Column, Column, Value, Where, Name)	
	local ret = SQLQuery(Query)
		
	if ret == 0 then
		LogPrint( string.format("Não foi possível executar: %s", Query))
	end
	
	SQLClose()
end



function DataBase.CreateColumn(table, column, definition)
	SQLQuery(string.format("IF NOT EXISTS( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '%s' AND COLUMN_NAME = '%s') ALTER TABLE %s ADD %s %s", table, column, table, column, definition))
	SQLClose()
end

local DataBase_Handles = {}

function DataBase.CallRunAfterLoad()
	for i in pairs(DataBase_Handles) do
		DataBase_Handles[i].callback()	
	end
end

function DataBase.RunAfterLoad(callback)
	DataBase_Handles[callback] = { callback = callback }
end

return DataBase