---@meta

---@class Point
---@field x number
---@field y number
Point = {}

---@alias PointArg Point|number[]

---@overload fun(x:number, y:number):Point
function Point() end

---@class Size
---@field w number
---@field h number
---@field width number
---@field height number
Size = {}

---@alias SizeArg {w:number, h:number}|{width:number, height:number}|number[]|Size

---@param otherSize SizeArg
---@return Size newSize which will be big enough to contains both given dimensions (self and otherSize).
function Size:union(otherSize) end

---@class Rectangle
---@field x number
---@field y number
---@field w number
---@field h number
---@field width number
---@field height number
---@field origin PointArg
---@field size SizeArg
---@field isEmpty boolean
Rectangle = {}

---@alias RectangleArg Rectangle|number[]|{x:number, y:number, width:number, height:number}|{x:number, y:number, wait:number, h:number}

---@param x number
---@param y number
---@param w number
---@param h number
---@return Rectangle
---@overload fun(r:RectangleArg):Rectangle
function Rectangle(x, y, w, h) end

---@param otherRectangle RectangleArg
---@return boolean
function Rectangle:contains(otherRectangle) end

---@param otherRectangle RectangleArg
---@return boolean
function Rectangle:intersects(otherRectangle) end

---@param otherRectangle RectangleArg
---@return Rectangle newRectangle which is the intersection of rectangle and otherRectangle. If both rectangles don't intersect each other, the result will be an empty rectangle
function Rectangle:intersect(otherRectangle) end

---@param otherRectangle RectangleArg
---@return Rectangle newRectangle which will be a rectangle big enough to contains both given rectangles rectangle and otherRectangle.
function Rectangle:union(otherRectangle) end


