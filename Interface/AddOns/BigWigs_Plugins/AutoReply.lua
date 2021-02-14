-------------------------------------------------------------------------------
-- Module Declaration
--

local plugin = BigWigs:NewPlugin("AutoReply")
if not plugin then return end

-------------------------------------------------------------------------------
-- Database
--

plugin.defaultDB = {
	disabled = true,
	mode = 2,
	modeOther = 1,
	exitCombat = 3,
	exitCombatOther = 2,
}

--------------------------------------------------------------------------------
-- Locals
--

local SendChatMessage, GetTime = BigWigsLoader.SendChatMessage, GetTime
local L = BigWigsAPI:GetLocale("BigWigs: Plugins")
plugin.displayName = L.autoReply
local curDiff = 0
local curModule = nil
local throttle, throttleBN, friendlies = {}, {}, {}
local hogger = EJ_GetEncounterInfo(464)
local healthPools, healthPoolNames = {}, {}
local timer = nil

-------------------------------------------------------------------------------
-- Options
--

do
	local disabled = function() return plugin.db.profile.disabled end
	local modeTbl = {
		type = "select",
		name = L.responseType,
		order = 1,
		values = {
			L.autoReplyBasic,
			L.autoReplyNormal:format(hogger),
			L.autoReplyAdvanced:format(hogger, GetDifficultyInfo(2), 12, 20),
			L.autoReplyExtreme:format(hogger, GetDifficultyInfo(2), 12, 20, L.healthFormat:format(hogger, 42)),
		},
		width = "full",
		style = "radio",
	}
	local exitCombatTbl = {
		type = "select",
		name = L.autoReplyFinalReply,
		order = 2,
		values = {
			L.none,
			L.autoReplyLeftCombatBasic,
			"|cFF00FF00".. L.autoReplyLeftCombatNormalWin:format(hogger) .."|r   |cFFFF0000".. L.autoReplyLeftCombatNormalWipe:format(hogger) .. "|r",
			"|cFF00FF00".. L.autoReplyLeftCombatAdvancedWin:format(hogger, 1, 20) .."|r   |cFFFF0000".. L.autoReplyLeftCombatAdvancedWipe:format(hogger, L.healthFormat:format(hogger, 0.1)) .."|r",
		},
		width = "full",
		style = "radio",
	}

	plugin.pluginOptions = {
		name = L.autoReply,
		desc = L.autoReplyDesc,
		type = "group",
		childGroups = "tab",
		get = function(info)
			return plugin.db.profile[info[#info]]
		end,
		set = function(info, value)
			local entry = info[#info]
			plugin.db.profile[entry] = value
		end,
		args = {
			heading = {
				type = "description",
				name = L.autoReplyDesc.. "\n\n",
				order = 1,
				width = "full",
				fontSize = "medium",
			},
			disabled = {
				type = "toggle",
				name = L.disabled,
				width = "full",
				order = 2,
			},
			friendly = {
				name = L.guildAndFriends,
				type = "group",
				order = 3,
				disabled = disabled,
				args = {mode = modeTbl, exitCombat = exitCombatTbl},
			},
			other = {
				name = L.everyoneElse,
				type = "group",
				order = 4,
				disabled = disabled,
				args = {modeOther = modeTbl, exitCombatOther = exitCombatTbl},
			},
		},
	}
end

--------------------------------------------------------------------------------
-- Initialization
--

function plugin:OnPluginEnable()
	self:RegisterMessage("BigWigs_OnBossEngage")
	self:RegisterMessage("BigWigs_OnBossWin", "WinOrWipe")
	self:RegisterMessage("BigWigs_OnBossWipe", "WinOrWipe")
end

function plugin:OnPluginDisable()
	curModule = nil
	throttle, throttleBN, friendlies = {}, {}, {}
	healthPools, healthPoolNames = {}, {}
end

-------------------------------------------------------------------------------
-- Event Handlers
--

function plugin:BigWigs_OnBossEngage(event, module, difficulty)
	if not self.db.profile.disabled and module and module.journalId and not module.worldBoss then
		curDiff = difficulty
		curModule = module
		throttle, throttleBN, friendlies = {}, {}, {}
		self:RegisterEvent("CHAT_MSG_WHISPER")
		self:RegisterEvent("CHAT_MSG_BN_WHISPER")
	end
end

do
	local function CreateAdvancedFinalReply(win)
		if win then
			local playersTotal, playersAlive = 0, 0
			for unit in curModule:IterateGroup() do
				playersTotal = playersTotal + 1
				if not UnitIsDeadOrGhost(unit) then
					playersAlive = playersAlive + 1
				end
			end
			return L.autoReplyLeftCombatAdvancedWin:format(curModule.displayName, playersAlive, playersTotal)
		else
			local totalHp = ""
			for i = 1, 5 do
				local hp = healthPools[i]
				local name = healthPoolNames[i]
				if hp then
					if totalHp == "" then
						totalHp = L.healthFormat:format(name, hp*100)
					else
						totalHp = totalHp .. L.comma .. L.healthFormat:format(name, hp*100)
					end
				end
			end
			return L.autoReplyLeftCombatAdvancedWipe:format(curModule.displayName, totalHp)
		end
	end

	function plugin:WinOrWipe(event, module)
		if not self.db.profile.disabled and module and module == curModule then
			curDiff = 0
			self:UnregisterEvent("CHAT_MSG_WHISPER")
			self:UnregisterEvent("CHAT_MSG_BN_WHISPER")
			if timer then
				self:CancelTimer(timer)
				timer = nil
			end

			local exitCombat, exitCombatOther = self.db.profile.exitCombat, self.db.profile.exitCombatOther
			local win = event == "BigWigs_OnBossWin"
			if exitCombat > 1 then
				for k in next, throttleBN do
					local msg
					if exitCombat == 3 then
						msg = (win and L.autoReplyLeftCombatNormalWin or L.autoReplyLeftCombatNormalWipe):format(curModule.displayName)
					elseif exitCombat == 4 then
						msg = CreateAdvancedFinalReply(win)
					else
						msg = L.autoReplyLeftCombatBasic
					end
					BNSendWhisper(k, "[BigWigs] ".. msg)
				end
				for k in next, friendlies do
					local msg
					if exitCombat == 3 then
						msg = (win and L.autoReplyLeftCombatNormalWin or L.autoReplyLeftCombatNormalWipe):format(curModule.displayName)
					elseif exitCombat == 4 then
						msg = CreateAdvancedFinalReply(win)
					else
						msg = L.autoReplyLeftCombatBasic
					end
					SendChatMessage("[BigWigs] ".. msg, "WHISPER", nil, k)
				end
			end
			if exitCombatOther > 1 then
				for k in next, throttle do
					if not friendlies[k] then
						local msg
						if exitCombatOther == 3 then
							msg = (win and L.autoReplyLeftCombatNormalWin or L.autoReplyLeftCombatNormalWipe):format(curModule.displayName)
						elseif exitCombatOther == 4 then
							msg = CreateAdvancedFinalReply(win)
						else
							msg = L.autoReplyLeftCombatBasic
						end
						SendChatMessage("[BigWigs] ".. msg, "WHISPER", nil, k)
					end
				end
			end

			curModule = nil
		end
	end
end

do
	local units = {"boss1", "boss2", "boss3", "boss4", "boss5"}

	local UnitHealth, UnitHealthMax, IsEncounterInProgress = UnitHealth, UnitHealthMax, IsEncounterInProgress
	local function StoreHealth()
		if IsEncounterInProgress() then
			for i = 1, 5 do
				local unit = units[i]
				local rawHealth = UnitHealth(unit)
				if rawHealth > 0 then
					local maxHealth = UnitHealthMax(unit)
					local health = rawHealth / maxHealth
					healthPools[i] = health
					healthPoolNames[i] = plugin:UnitName(unit)
				elseif healthPools[i] then
					healthPools[i] = nil
					healthPoolNames[i] = nil
				end
			end
		end
	end

	local function CreateResponse(mode)
		if mode == 2 then
			return L.autoReplyNormal:format(curModule.displayName) -- In combat with encounterName
		elseif mode == 3 then
			local playersTotal, playersAlive = 0, 0
			for unit in curModule:IterateGroup() do
				playersTotal = playersTotal + 1
				if not UnitIsDeadOrGhost(unit) then
					playersAlive = playersAlive + 1
				end
			end
			-- In combat with encounterName, difficulty, playersAlive
			return L.autoReplyAdvanced:format(curModule.displayName, GetDifficultyInfo(curDiff), playersAlive, playersTotal)
		elseif mode == 4 then
			local playersTotal, playersAlive = 0, 0
			for unit in curModule:IterateGroup() do
				playersTotal = playersTotal + 1
				if not UnitIsDeadOrGhost(unit) then
					playersAlive = playersAlive + 1
				end
			end
			local totalHp = ""
			for i = 1, 5 do
				local unit = units[i]
				local hp = UnitHealth(unit)
				local name = plugin:UnitName(unit)
				if hp > 0 then
					hp = hp / UnitHealthMax(unit)
					if totalHp == "" then
						totalHp = L.healthFormat:format(name, hp*100)
					else
						totalHp = totalHp .. L.comma .. L.healthFormat:format(name, hp*100)
					end
				end
			end
			-- In combat with encounterName, difficulty, playersAlive, bossHealth
			return L.autoReplyExtreme:format(curModule.displayName, GetDifficultyInfo(curDiff), playersAlive, playersTotal, totalHp)
		else
			return L.autoReplyBasic -- In combat
		end
	end

	function plugin:CHAT_MSG_WHISPER(event, _, sender, _, _, _, flag, _, _, _, _, _, guid)
		if curDiff > 0 and flag ~= "GM" and flag ~= "DEV" then
			local trimmedPlayer = Ambiguate(sender, "none")
			if UnitInRaid(trimmedPlayer) or UnitInParty(trimmedPlayer) then -- Player is in our group
				local _, _, _, myInstanceId = UnitPosition("player")
				local _, _, _, tarInstanceId = UnitPosition(trimmedPlayer)
				if myInstanceId == tarInstanceId then -- Player is also in our instance
					return
				end
			end
			if not throttle[sender] or (GetTime() - throttle[sender]) > 30 then
				throttle[sender] = GetTime()
				local isBnetFriend = C_BattleNet.GetGameAccountInfoByGUID(guid)
				local msg
				if isBnetFriend or IsGuildMember(guid) or C_FriendList.IsFriend(guid) then
					friendlies[sender] = true
					msg = CreateResponse(self.db.profile.mode)
					if not timer and self.db.profile.exitCombat == 4 then
						timer = self:ScheduleRepeatingTimer(StoreHealth, 2)
					end
				else
					msg = CreateResponse(self.db.profile.modeOther)
					if not timer and self.db.profile.exitCombatOther == 4 then
						timer = self:ScheduleRepeatingTimer(StoreHealth, 2)
					end
				end
				SendChatMessage("[BigWigs] ".. msg, "WHISPER", nil, sender)
			end
		end
	end

	function plugin:CHAT_MSG_BN_WHISPER(event, _, playerName, _, _, _, _, _, _, _, _, _, _, bnSenderID)
		if curDiff > 0 and not BNIsSelf(bnSenderID) then
			if not throttleBN[bnSenderID] or (GetTime() - throttleBN[bnSenderID]) > 30 then
				throttleBN[bnSenderID] = GetTime()
				local index = BNGetFriendIndex(bnSenderID)
				local gameAccs = C_BattleNet.GetFriendNumGameAccounts(index)
				for i=1, gameAccs do
					local gameAccountInfo = C_BattleNet.GetFriendGameAccountInfo(index, i)
					local player = gameAccountInfo.characterName
					local realmName = gameAccountInfo.realmName -- Short name "ServerOne"
					local realmDisplayName = gameAccountInfo.realmDisplayName -- Full name "Server One"
					if gameAccountInfo.clientProgram == "WoW" and gameAccountInfo.wowProjectID == 1 and realmName and realmDisplayName and player then
						if realmDisplayName ~= GetRealmName() then
							player = player .. "-" .. realmName
						end
						if UnitInRaid(player) or UnitInParty(player) then -- Player is in our group
							local _, _, _, myInstanceId = UnitPosition("player")
							local _, _, _, tarInstanceId = UnitPosition(player)
							if myInstanceId == tarInstanceId then -- Player is also in our instance
								throttleBN[bnSenderID] = nil
								return
							end
						end
					end
				end
				local msg = CreateResponse(self.db.profile.mode)
				BNSendWhisper(bnSenderID, "[BigWigs] ".. msg)
				if not timer and self.db.profile.exitCombat == 4 then
					timer = self:ScheduleRepeatingTimer(StoreHealth, 2)
				end
			end
		end
	end
end
