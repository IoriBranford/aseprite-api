---@meta

---@class app
---@field cel Cel
---@field frame Frame
---@field image Image
---@field layer Layer
---@field sprite Sprite
---@field sprites Sprite[]
app = {}

---@class AppAlert
---@field title string
---@field text string|string[]
---@field buttons string|string[]?

---@param alert string|AppAlert
function app.alert(alert) end

---@param name string
---@param f function
---@overload fun(f:function)
function app.transaction(name, f) end

---@param filename string
---@return Sprite?
function app.open(filename) end