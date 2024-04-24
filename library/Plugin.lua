---@meta

---@class Plugin
---@field name string
---@field path string
---@field preferences table
Plugin = {}

---@param t {id:string, title:string, group:string, onclick:function, onenabled:fun():boolean}
function Plugin:newCommand(t) end

---@param plugin Plugin
function init(plugin) end

---@param plugin Plugin
function exit(plugin) end