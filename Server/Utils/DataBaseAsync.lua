DataBaseAsync = {}

function DataBaseAsync.SetAddValue(Table, Column, Value, Where, Name)
    local query = string.format("UPDATE %s SET %s=%s+%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)

    CreateAsyncQuery('SetAddValueOwner', query, -1, 0)
end 

function DataBaseAsync.SetDecreaseValue(Table, Column, Value, Where, Name)
    local query = string.format("UPDATE %s SET %s=%s-%d WHERE %s = '%s'", Table, Column, Column, Value, Where, Name)

    CreateAsyncQuery('SetDecreaseValueOwner', query, -1, 0)
end

function DataBaseAsync.SetValue(Table, Column, Value, Where, Name)
	local query = string.format("UPDATE %s SET %s=%d WHERE %s = '%s'", Table, Column, Value, Where, Name)

    CreateAsyncQuery('SetValueOwner', query, -1, 0)
end

function DataBaseAsync.SetString(Table, Column, String, Where, Name)
	local query = string.format("UPDATE %s SET %s='%s' WHERE %s = '%s'", Table, Column, String, Where, Name)

    CreateAsyncQuery('SetStringOwner', query, -1, 0)
end

return DataBaseAsync