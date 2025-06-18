---@meta

app.command = {}

---@param url string
function app.command.openBrowser(url) end

---@param t { type: "url", path: string }
function app.command.Launch(t) end

---@class ImportSpriteSheetArgs
---@field ui boolean? default true
---@field type SpriteSheetType
---@field frameBounds RectangleArg
---@field padding SizeArg?
---@field partialTiles boolean? default false

---comment
---@param t ImportSpriteSheetArgs
function app.command.ImportSpriteSheet(t) end

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

---@class CanvasSizeArgs4
---@field ui boolean? default true
---@field left integer
---@field top integer
---@field right integer
---@field bottom integer
---@field trimOutside boolean? default false

---@class CanvasSizeArgs1
---@field ui boolean? default true
---@field bounds RectangleArg
---@field trimOutside boolean? default false

---@alias CanvasSizeArgs CanvasSizeArgs1|CanvasSizeArgs4

---@param t CanvasSizeArgs
function app.command.CanvasSize(t) end