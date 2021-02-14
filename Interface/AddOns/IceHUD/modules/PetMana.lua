local L = LibStub("AceLocale-3.0"):GetLocale("IceHUD", false)
local PetMana = IceCore_CreateClass(IceUnitBar)

local SPELL_POWER_RAGE = SPELL_POWER_RAGE
local SPELL_POWER_FOCUS = SPELL_POWER_FOCUS
local SPELL_POWER_ENERGY = SPELL_POWER_ENERGY
local SPELL_POWER_RUNIC_POWER = SPELL_POWER_RUNIC_POWER
if IceHUD.WowVer >= 80000 or IceHUD.WowClassic then
	SPELL_POWER_RAGE = Enum.PowerType.Rage
	SPELL_POWER_FOCUS = Enum.PowerType.Focus
	SPELL_POWER_ENERGY = Enum.PowerType.Energy
	SPELL_POWER_RUNIC_POWER = Enum.PowerType.RunicPower
end

-- Constructor --
function PetMana.prototype:init()
	PetMana.super.prototype.init(self, "PetMana", "pet")

	self:SetDefaultColor("PetMana", 62, 54, 152)
	self:SetDefaultColor("PetRage", 171, 59, 59)
	self:SetDefaultColor("PetEnergy", 218, 231, 31)
	self:SetDefaultColor("PetFocus", 242, 149, 98)

	self.scalingEnabled = true
end


-- OVERRIDE
function PetMana.prototype:GetDefaultSettings()
	local settings = PetMana.super.prototype.GetDefaultSettings(self)

	settings["side"] = IceCore.Side.Left
	settings["offset"] = -2
	settings.scale = 0.7
	settings["textVerticalOffset"] = 4
	settings["upperText"] = "[PercentMP:Round]"
	settings["lowerText"] = ""
	settings["barVerticalOffset"] = 35

	return settings
end


-- OVERRIDE
--[[
function PetMana.prototype:CreateFrame()
	PetMana.super.prototype.CreateFrame(self)

	local point, relativeTo, relativePoint, xoff, yoff = self.frame.bottomUpperText:GetPoint()
	if (point == "TOPLEFT") then
		point = "BOTTOMLEFT"
	else
		point = "BOTTOMRIGHT"
	end

	self.frame.bottomUpperText:ClearAllPoints()
	self.frame.bottomUpperText:SetPoint(point, relativeTo, relativePoint, 0, 0)
end
]]

function PetMana.prototype:Enable(core)
	PetMana.super.prototype.Enable(self, core)

	self:RegisterEvent("PET_UI_UPDATE",	 "CheckPet")
	if IceHUD.WowVer < 80000 and not IceHUD.WowClassic then
		self:RegisterEvent("PLAYER_PET_CHANGED", "CheckPet")
	end
	self:RegisterEvent(IceHUD.WowVer < 80000 and not IceHUD.WowClassic and "PET_BAR_CHANGED" or "PET_BAR_UPDATE_USABLE", "CheckPet")
	self:RegisterEvent("UNIT_PET", "CheckPet")

	if IceHUD.WowVer >= 40000 or IceHUD.WowClassic then
		self:RegisterEvent(IceHUD.UnitPowerEvent, "UpdateEvent")
		if IceHUD.WowVer < 80000 and not IceHUD.WowClassic then
			self:RegisterEvent("UNIT_MAXPOWER", "UpdateEvent")
		end
	else
		self:RegisterEvent("UNIT_MANA", "UpdateEvent")
		self:RegisterEvent("UNIT_MAXMANA", "UpdateEvent")
		self:RegisterEvent("UNIT_RAGE", "UpdateEvent")
		self:RegisterEvent("UNIT_MAXRAGE", "UpdateEvent")
		self:RegisterEvent("UNIT_ENERGY", "UpdateEvent")
		self:RegisterEvent("UNIT_MAXENERGY", "UpdateEvent")
		self:RegisterEvent("UNIT_FOCUS", "UpdateEvent")
		self:RegisterEvent("UNIT_MAXFOCUS", "UpdateEvent")
	end

	self:RegisterEvent("UNIT_DISPLAYPOWER", "ManaType")

	if UnitHasVehicleUI then
		self:RegisterEvent("UNIT_ENTERED_VEHICLE", "EnteringVehicle")
		self:RegisterEvent("UNIT_EXITED_VEHICLE", "ExitingVehicle")
	end
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "EnteringWorld")

	self:CheckPet()
	self:ManaType(nil, self.unit)
end


function PetMana.prototype:CheckPet()
	if (UnitExists(self.unit)) then
		self:Show(true)
		self:ManaType(nil, self.unit)
		self:Update(self.unit)
	else
		self:Show(false)
	end
end


function PetMana.prototype:ManaType(event, unit)
	if (unit ~= self.unit) then
		return
	end

	self.manaType = UnitPowerType(self.unit)
	self:Update(self.unit)
end


function PetMana.prototype:SetupOnUpdate(enable)
	if enable then
		if not self.CustomOnUpdate then
			self.CustomOnUpdate = function() self:Update(self.unit) end
		end

		IceHUD.IceCore:RequestUpdates(self, self.CustomOnUpdate)
	else
		-- make sure the animation has a chance to finish filling up the bar before we cut it off completely
		if self.CurrScale ~= self.DesiredScale then
			IceHUD.IceCore:RequestUpdates(self, self.MyOnUpdateFunc)
		else
			IceHUD.IceCore:RequestUpdates(self, nil)
		end
	end
end


function PetMana.prototype:MyOnUpdate()
	PetMana.super.prototype.MyOnUpdate(self)

	if self.CurrScale == self.DesiredScale then
		self:SetupOnUpdate(false)
	end
end


function PetMana.prototype:UpdateEvent(event, unit)
	self:Update(unit)
end

function PetMana.prototype:Update(unit)
	PetMana.super.prototype.Update(self)

	if (unit and (unit ~= self.unit)) then
		return
	end

	if ((not UnitExists(unit)) or (self.maxMana == 0)) then
		self:Show(false)
		return
	else
		self:Show(true)
	end

	if (self.manaPercentage == 1 and self.manaType ~= SPELL_POWER_RAGE and self.manaType ~= SPELL_POWER_RUNIC_POWER)
		or (self.manaPercentage == 0 and (self.manaType == SPELL_POWER_RAGE or self.manaType == SPELL_POWER_RUNIC_POWER)) then
		self:SetupOnUpdate(false)
	else
		self:SetupOnUpdate(true)
	end

	local color = "PetMana"
	if (self.moduleSettings.scaleManaColor) then
		color = "ScaledManaColor"
	end
	if not (self.alive) then
		color = "Dead"
	else
		if (self.manaType == SPELL_POWER_RAGE) then
			color = "PetRage"
		elseif (self.manaType == SPELL_POWER_FOCUS) then
			color = "PetFocus"
		elseif (self.manaType == SPELL_POWER_ENERGY) then
			color = "PetEnergy"
		end
	end

	if self.maxMana > 0 then
		self:UpdateBar(self.manaPercentage, color)
	end

	if not IceHUD.IceCore:ShouldUseDogTags() then
		self:SetBottomText1(math.floor(self.manaPercentage * 100))
	end
end


-- OVERRIDE
function PetMana.prototype:GetOptions()
	local opts = PetMana.super.prototype.GetOptions(self)

	opts["scaleManaColor"] = {
		type = "toggle",
		name = L["Color bar by mana %"],
		desc = L["Colors the mana bar from MaxManaColor to MinManaColor based on current mana %"],
		get = function()
			return self.moduleSettings.scaleManaColor
		end,
		set = function(info, value)
			self.moduleSettings.scaleManaColor = value
			self:Redraw()
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 51
	}

	return opts
end

function PetMana.prototype:EnteringVehicle(event, unit, arg2)
	if (self.unit == "pet") then
		if IceHUD:ShouldSwapToVehicle(unit, arg2) then
			self.unit = "player"
			self:RegisterFontStrings()
		end
		self:ManaType(nil, self.unit)
	end
end


function PetMana.prototype:ExitingVehicle(event, unit)
	if (unit == "player") then
		if self.unit == "player" then
			self.unit = "pet"
			self:RegisterFontStrings()
		end
		self:ManaType(nil, self.unit)
	end
end

function PetMana.prototype:EnteringWorld()
	self:TargetChanged()
	self:Update(self.unit)

	if UnitHasVehicleUI then
		if UnitHasVehicleUI("player") then
			self:EnteringVehicle(nil, "player", true)
		else
			self:ExitingVehicle(nil, "player")
		end
	end
end

-- Load us up
IceHUD.PetMana = PetMana:new()
