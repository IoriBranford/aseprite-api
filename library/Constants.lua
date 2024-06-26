---@meta

---@enum (key) ColorMode
ColorMode = {
    RGB="RGB",
    GRAY="GRAY",
    INDEXED="INDEXED",
    TILEMAP="TILEMAP"
}

---@enum (key) BlendMode
BlendMode = {
    NORMAL="NORMAL",
    SRC="SRC"
}

---@enum (key) AniDir
AniDir = {
    FORWARD="FORWARD",
    REVERSE="REVERSE",
    PING_PONG="PING_PONG",
    PING_PONG_REVERSE="PING_PONG_REVERSE"
}

---@enum (key) SpriteSheetType
SpriteSheetType = {
    HORIZONTAL="HORIZONTAL",
    VERTICAL="VERTICAL",
    ROWS="ROWS",
    COLUMNS="COLUMNS",
    PACKED="PACKED",
}

---@enum (key) SpriteSheetDataFormat
SpriteSheetDataFormat = {
    JSON_HASH="JSON_HASH",
    JSON_ARRAY="JSON_ARRAY"
}