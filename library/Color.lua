---@meta

---@class Color
---@field red number
---@field green number
---@field blue number
---@field alpha number
---@field hsvHue number
---@field hsvSaturation number
---@field hsvValue number
---@field hslHue number
---@field hslSaturation number
---@field hslLightness number
---@field hue number Gets/sets the HSV hue or HSL hue depending on the kind of color.
---@field saturation number Gets/sets the HSV saturation or HSL saturation depending on the kind of color.
---@field value number
---@field lightness number
---@field index integer Gets or sets the palette index related to this color. If the color is not an index, i.e. it's RGB/HSL/HSV, the closest palette index of the current palette (the palette of the active sprite) that matches the RGB/HSL/HSV values will be returned.
---@field rgbaPixel integer Returns the pixel color which is equivalent to the RGBA values of this color.
---@field grayPixel integer Returns the pixel color which is equivalent to the gray+alpha values of this color.

---@class ColorSpec
---@field r number?
---@field g number?
---@field b number?
---@field a number?
---@field red number?
---@field green number?
---@field blue number?
---@field alpha number? default 255
---@field hue number?
---@field saturation number?
---@field value number?
---@field lightness number?
---@field index integer?

---@overload fun(colorSpec:ColorSpec):Color
---@overload fun(pixelColor:integer):Color receives a pixel color and the integer is interpreted depending on the active sprite.
---@return Color
function Color() end