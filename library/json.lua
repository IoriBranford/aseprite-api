---@meta

json = {}

---Parses the given jsonText and returns a Lua table-like object jsonObj that represents the given data.
---@param jsonText string json string
---@return table jsonObj
function json.decode(jsonText) end

---Converts the given Lua-table into a JSON text.
---@param t table
---@return string jsonText
function json.encode(t) end