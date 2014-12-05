local require_on_boot = (require 'pulpo.package').require
local _M = require_on_boot 'pulpo.defer.fs_c'

if ffi.os == "Windows" then
	_M.PATH_SEPS = "¥"
else
	_M.PATH_SEPS = "/"
end
function _M.path(...)
	return table.concat({...}, _M.PATH_SEPS)
end

return _M
