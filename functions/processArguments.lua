--[[
    Process command arguments with the following rules:
    * Removes any DOUBLE quotations that are in the command arguments
    * Will not remove double quotations WITH a preceding backslash (eg. "\"\"")
]]--

function processArguments(args)
    local result = {}
    local inQuote = false
    local currentString = ""

    for _, arg in ipairs(args) do
        if inQuote then
            currentString = currentString .. " " .. arg:gsub('"', '')
            
            -- Check if the current argument ends with a quote and is not preceded by a backslash
            if arg:sub(-1) == '"' and arg:sub(-2, -2) ~= '\\' then
                inQuote = false
                table.insert(result, currentString)
            end
        else
            if arg:sub(1, 1) == '"' and arg:sub(2, 2) ~= '\\' then
                inQuote = true
                currentString = arg:gsub('"', '')
            else
                table.insert(result, arg)
            end
        end
    end

    return result
end