--=========
-- Include
--=========

---@type Wc3AbilityExt
local Wc3AbilityExt = LibManager.getDepency('Wc3AbilityExt')
local AbilContainer = Wc3AbilityExt.Container
---@type Wc3Binary
local Wc3Binary = LibManager.getDepency('Wc3Binary')
local BinaryUnit = Wc3Binary.Unit
---@type Wc3Handle
local Wc3Handle = LibManager.getDepency('Wc3Handle')
local Unit = Wc3Handle.Unit
-- -@type BuffLib
-- local BuffLib = require(LibList.BuffLib) or error('')
---@type Wc3Parameter
local Wc3Parameter = LibManager.getDepency('Wc3Parameter')
local ParamType = Wc3Parameter.Type.enum
local ValueType = Wc3Parameter.ValueType.enum
local ParamUnit = Wc3Parameter.UnitContainer

---@type AbilityList
local AbilityList = LibManager.getDepency('AbilityList')
local LifeForceShield = AbilityList.LifeForceShield
---@type CorruptedPriestSettings
local Settings = require('CorruptedPriest.Settings')

--========
-- Module
--========

local CorruptedPriest = {}

---@param x number
---@param y number
---@param owner player
---@return Unit
function CorruptedPriest.new(x, y, owner)
    local unit = Unit.new(CorruptedPriest.Binary:getId(), x, y, owner)
    --BuffLib.Container.new(unit)

    -- Params
    local params = ParamUnit.new(unit)
    for _, param_type in pairs(ParamType) do
        params:add(param_type, ValueType.BASE, Settings.Params[param_type])
    end

    -- Abils
    local abils = AbilContainer.new(unit)
    abils:set(1, LifeForceShield)
    --abils:set('W', ThrowAxe)
    --abils:set('E', LifeForceShield)
    --abils:set('R', LifeForceShield)
    --abils:set('T', LifeForceShield)
    --abils:set('D', LifeForceShield)
    --abils:set('F', LifeForceShield)

    return unit
end

CorruptedPriest.Binary = Wc3Binary.Unit.new(Settings.Id, Settings.BaseId, Settings.Name)
CorruptedPriest.Binary:setName(Settings.Name)
CorruptedPriest.Binary:setIconGameInterface(Settings.Icon)
CorruptedPriest.Binary:setMana(100)
CorruptedPriest.Binary:setManaRegeneration(1)
CorruptedPriest.Binary:setNormalAbilities({})

return CorruptedPriest