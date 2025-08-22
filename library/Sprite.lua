---@meta

---@alias Properties {[string]:any}

---@class Image
---@field id integer
---@field width integer
---@field height integer
---@field bounds Rectangle
---@field cel Cel?
Image = {}

---@overload fun(sprite:Sprite):Image
---@overload fun(otherImage:Image, rectangle:Rectangle):Image
function Image() end

---@param sourceImage Image
---@param position PointArg?
---@param opacity integer?
---@param blendmode BlendMode?
function Image:drawImage(sourceImage, position, opacity, blendmode) end

---@return boolean isEmpty
function Image:isEmpty() end

---@class Cel
---@field sprite Sprite
---@field layer Layer
---@field frame Frame
---@field frameNumber integer the frame number 1 is the first frame (not 0). If you set this property the cel will be moved to the given frameNumber, check the notes of Cel.frame.
---@field image Image
---@field bounds Rectangle
---@field position PointArg
---@field opacity integer from 0 to 255. The cel is completely transparent when the value is 0; opaque when the value is 255.

---@class Layer
---@field sprite Sprite
---@field name string
---@field opacity integer from 0 to 255. The layer is completely transparent when the value is 0; opaque when the value is 255. When the layer is a background, returns 255.
---@field isImage boolean
---@field isGroup boolean
---@field layers Layer[]? if layer is group
---@field cels Cel[]
Layer = {}

---Returns a cel, if any, at the intersection of the layer and a frame.
---@param frameNumber Frame|integer a frame object or its frame number
---@return Cel?
function Layer:cel(frameNumber) end

---@class Frame
---@field sprite Sprite
---@field frameNumber integer 1 is the first frame in the animation and this frame is equal to frame == frame.sprite.frames[frameNumber].
---@field duration number in seconds
---@field previous Frame
---@field next Frame

---@class Tag
---@field sprite Sprite
---@field fromFrame Frame
---@field toFrame Frame
---@field frames integer
---@field name string
---@field aniDir AniDir
---@field repeats integer
---0 = Doesn't specify, plays infinite in UI, once on export, for ping-pong it plays once in each direction
---1 = Plays once, for ping-pong it plays just in one direction
---2 = Plays twice, for ping-pong it plays once in each direction, and once in reverse
---n = Plays N times
---@field properties Properties
---@field data string

---@class Sprite
---@field width number
---@field height number
---@field frames Frame[]
---@field layers Layer[]
---@field tags Tag[]
---@field palettes Palette[]
---@field filename string
Sprite = {}

---@overload fun(width:number,height:number):Sprite
---@overload fun(width:number,height:number,colorMode:ColorMode):Sprite
---@overload fun(sprite:Sprite):Sprite
function Sprite() end

---Closes the sprite. This doesn't ask the user to save changes.
---If you want to do the classic File > Close where the user is asking to save changes, you can use app.command.CloseFile().
function Sprite:close() end

---@return Layer
function Sprite:newLayer() end

---@return Frame
function Sprite:newEmptyFrame() end

---@param frame integer
function Sprite:deleteFrame(frame) end

---@param layer Layer
---@param frame Frame|integer
---@param image Image?
---@param position PointArg?
---@return Cel
function Sprite:newCel(layer, frame, image, position) end

---@param fromFrameNumber integer
---@param toFrameNumber integer
---@return Tag
function Sprite:newTag(fromFrameNumber, toFrameNumber) end

function Sprite:flatten() end

---@param palette Palette
function Sprite:setPalette(palette) end

---@param filename string
function Sprite:saveAs(filename) end

function Sprite:close() end

---Creates a new layer at the top of the layers stack.
---@return Layer
function Sprite:newLayer() end

---Deletes the given layer or the layer with the given layerName (a string).
---@param layer Layer|string
function Sprite:deleteLayer(layer) end
