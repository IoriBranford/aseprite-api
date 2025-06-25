---@meta

---@class Events
Events = {}

---@alias ListenerCode number

---Connects the given function (2nd argument) with the given event by eventName.
---When the event happens in the future the function will be called automatically. This is like the function starts "listening" the event.
---@param eventName string the event name/code/identifier
---@param f function
---@return ListenerCode listenerCode a numeric value that indicates the connection between the event and the function. You can use this value in Events.off() to stop listening/break the connection with the event.
function Events:on(eventName, f) end

---Disconnects the given function from all events in the object, or stops/breaks only the specific connection identified by listenerCode (the code returned by Events:on()).
---@param f function|ListenerCode
function Events:off(f) end