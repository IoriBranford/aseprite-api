---@meta

app.pixelColor = {}

---@param r number
---@param g number
---@param b number
---@param a number? default 255
---@return integer rgba a 32-bit unsigned integer for RGBA images
function app.pixelColor.rgba(r, g, b, a) end

---@param rgba integer a value created with app.pixelColor.rgba() or Image:getPixel() from a RGBA image.
---@return number red the red component
function app.pixelColor.rgbaR(rgba) end

---@param rgba integer a value created with app.pixelColor.rgba() or Image:getPixel() from a RGBA image.
---@return number green the green component
function app.pixelColor.rgbaG(rgba) end

---@param rgba integer a value created with app.pixelColor.rgba() or Image:getPixel() from a RGBA image.
---@return number blue the blue component
function app.pixelColor.rgbaB(rgba) end

---@param rgba integer a value created with app.pixelColor.rgba() or Image:getPixel() from a RGBA image.
---@return number alpha the alpha component
function app.pixelColor.rgbaA(rgba) end

---@param gray number
---@param alpha number? default 255
---@return integer grayPixel a 16-bit unsigned integer for grayscale images
function app.pixelColor.graya(gray, alpha) end

---@param grayPixel integer a value created with app.pixelColor.graya() or Image:getPixel() from a grayscale image.
---@return number gray the gray component
function app.pixelColor.grayaV(grayPixel) end

---@param grayPixel integer a value created with app.pixelColor.graya() or Image:getPixel() from a grayscale image.
---@return number alpha the alpha component
function app.pixelColor.grayaA(grayPixel) end