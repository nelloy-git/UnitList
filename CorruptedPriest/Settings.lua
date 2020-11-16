--=========
-- Include
--=========

---@type Wc3Binary
local Wc3Binary = LibManager.getDepency('Wc3Binary')
local getFreeId = Wc3Binary.getUnitId
---@type Wc3Parameter
local Wc3Parameter = LibManager.getDepency('Wc3Parameter')
local ParamType = Wc3Parameter.Type.enum
---@type Wc3Utils
local Wc3Utils = LibManager.getDepency('Wc3Utils')
local id2int = Wc3Utils.id2int

--========
-- Module
--========

---@class CorruptedPriestSettings
local Settings = {}

Settings.Name = 'Corrupted priest'
Settings.BaseId = id2int('Hpal')
Settings.Id = getFreeId()
Settings.Icon = Macro('ReplaceableTextures\\\\CommandButtons\\\\BTNPriest.blp')

----------------
-- Parameters --
----------------

Settings.Params = {
    [ParamType.PATK] = 10,
    [ParamType.PSPD] = 0.5,
    [ParamType.PDEF] = 2,
    [ParamType.PRES] = 0.05,
    [ParamType.MATK] = 20,
    [ParamType.MSPD] = 0,
    [ParamType.MDEF] = 5,
    [ParamType.MRES] = 0.1,
    [ParamType.CRIT] = 0,
    [ParamType.LIFE] = 500,
    [ParamType.REGE] = 3,
    [ParamType.MANA] = 300,
    [ParamType.RECO] = 1,
    [ParamType.MOVE] = 220,
}

return Settings