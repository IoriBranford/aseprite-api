---@meta

---@class app
---@field cel Cel
---@field frame Frame
---@field image Image
---@field layer Layer
---@field sprite Sprite
---@field sprites Sprite[]
---@field window Window
---@field params {[string]:string} a table with parameters specified as --script-param key=value in the CLI or as <param> in user.aseprite-keys or gui.xml file.
app = {}

---@class AppAlert
---@field title string
---@field text string|string[]
---@field buttons string|string[]? default is a single "OK" button

---Shows an alert message.
---@param alert string|AppAlert
---@return integer pressedButton 1 if the first button was clicked, 2 if the second one, etc.
function app.alert(alert) end

---@param name string
---@param f function
---@overload fun(f:function)
function app.transaction(name, f) end

---@param filename string
---@return Sprite?
function app.open(filename) end