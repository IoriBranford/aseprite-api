---@meta

---@class app_fs
---@field pathSeparator string the preferred path separator of the current platform, it is / on macOS and Linux, and \ on Windows. Preferably you should use app.fs.joinPath().
---@field currentPath string the path the Aseprite executable was launched from.
app.fs = {}

---@param fn string
---@return string
function app.fs.filePath(fn) end

---@param fn string
---@return string
function app.fs.fileName(fn) end

---@param fn string
---@return string
function app.fs.fileTitle(fn) end

---@param fn string
---@return string
function app.fs.filePathAndTitle(fn) end

---Can accept any number of string arguments to join together with the path separator for the current platform.
---@param ... string
---@return string
function app.fs.joinPath(...) end

---@param fn string
---@return boolean
function app.fs.isFile(fn) end

---@param fn string
---@return boolean
function app.fs.isDirectory(fn) end

---Returns a list of files in the given directory path
---@param path string
---@return string[] files a table where each element is a file name, each file name is relative to the given path, they are not full path file names.
function app.fs.listFiles(path) end