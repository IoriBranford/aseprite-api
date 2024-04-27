---@meta

app.command = {}

---@param url string
function app.command.openBrowser(url) end

---@class ExportSpriteSheetArgs
---@field ui boolean
---@field askOverwrite boolean
---@field type SpriteSheetType
---@field columns number
---@field rows number
---@field width number
---@field height number
---@field bestFit boolean
---@field textureFilename string
---@field dataFilename string
---@field dataFormat SpriteSheetDataFormat
---@field filenameFormat string "{title} ({layer}) {frame}.{extension}"
---@field borderPadding number
---@field shapePadding number
---@field innerPadding number
---@field trimSprite boolean
---@field trim boolean
---@field trimByGrid boolean
---@field extrude boolean
---@field ignoreEmpty boolean
---@field mergeDuplicates boolean
---@field openGenerated boolean
---@field layer string
---@field tag string
---@field splitLayers boolean
---@field splitTags boolean
---@field splitGrid boolean
---@field listLayers boolean
---@field listTags boolean
---@field listSlices boolean
---@field fromTilesets boolean

---@param t ExportSpriteSheetArgs
function app.command.ExportSpriteSheet(t) end