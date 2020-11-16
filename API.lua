LibManager.startLib('UnitList')

--===========
-- Depencies
--===========

LibManager.addDepency('AbilityList', 'https://github.com/nelloy-git/AbilityList.git')
LibManager.addDepency('Wc3AbilityExt', 'https://github.com/nelloy-git/Wc3AbilityExt.git')
LibManager.addDepency('Wc3Binary', 'https://github.com/nelloy-git/Wc3Binary.git')
LibManager.addDepency('Wc3Handle', 'https://github.com/nelloy-git/Wc3Handle.git')
LibManager.addDepency('Wc3Parameter', 'https://github.com/nelloy-git/Wc3Parameter.git')
LibManager.addDepency('Wc3Utils', 'https://github.com/nelloy-git/Wc3Utils.git')

--=====
-- API
--=====

---@class UnitList
local UnitList = {}

local CorruptedPriest = require('CorruptedPriest')
UnitList.newCorruptedPriest = CorruptedPriest.new

LibManager.endLib()

return UnitList