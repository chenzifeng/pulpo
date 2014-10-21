local ffi = require 'ffiex.init'
local loader = require 'pulpo.loader'

local _M = (require 'pulpo.package').module('pulpo.errno')

local ffi_state = loader.load("errno.lua", {}, {
	"EAGAIN", "EWOULDBLOCK", "ENOTCONN", "EINPROGRESS", "EPIPE", 
	regex = {
		"^E%w+"
	}
}, nil, [[
	#include <errno.h>
]])

function _M.errno()
	return ffi.errno()
end

return setmetatable(_M, {
	__index = function (t, k)
		local v = ffi_state.defs[k]
		assert(v, "no error definition:"..k)
		rawset(t, k, v)
		return v
	end
})
