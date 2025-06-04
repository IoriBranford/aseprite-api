---@meta

---@class Palette
---@field frame Frame At the moment it always return the first frame, but in a near future Aseprite will support palette changes over time (in different frames), so this field should be the frame number where this palette is displayed for first time in the sprite.
---@operator len:integer

---Creates a new palette. By default it will contain 256 colors
---@overload fun(numberOfColors:integer):Palette
---@overload fun(otherPalette:Palette):Palette
---@overload fun(t:{fromFile:string?, fromResource:string?}):Palette If fromFile is given, the palette is loaded from the file name. If fromResource is given, the resourceID is an ID specified in one of the extensions palette (e.g. DB16, DB32, Solarized).
---@return Palette
function Palette() end

Palette = {}

---@param numberOfColors integer
function Palette:resize(numberOfColors) end

---@param i integer from 0 to #palette-1
---@return Color
function Palette:getColor(i) end

---@param i integer from 0 to #palette-1
---@param color Color|integer
function Palette:setColor(i, color) end

---@param filename string
function Palette:saveAs(filename) end