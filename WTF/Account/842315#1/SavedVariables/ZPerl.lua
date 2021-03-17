
ZPerlConfig = nil
ZPerlConfig_Global = nil
ZPerlConfigNew = {
	["global"] = {
		["showReadyCheck"] = 1,
		["highlight"] = {
		},
		["bar"] = {
			["fat"] = 1,
			["fadeTime"] = 0.5,
			["background"] = 1,
			["texture"] = {
				"KT - Flat", -- [1]
				"Interface\\AddOns\\!KalielsTracker\\Media\\KT-statusbar-flat", -- [2]
			},
		},
		["highlightSelection"] = 1,
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["HealthLowPoint"] = 0.85,
				["spell"] = "Tricks of the Trade",
				["item"] = "",
				["FadeAmount"] = 0.5,
			},
			["Main"] = {
				["enabled"] = true,
				["spell"] = "Tricks of the Trade",
				["item"] = "",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
			["NameFrame"] = {
				["HealthLowPoint"] = 0.85,
				["spell"] = "Tricks of the Trade",
				["item"] = "",
				["FadeAmount"] = 0.5,
			},
		},
		["showAFK"] = 1,
		["combatFlash"] = 1,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["raidpet"] = {
			["enable"] = 1,
		},
		["target"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["absorbs"] = 1,
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["enable"] = 1,
				["who"] = 3,
			},
			["raidIconAlternate"] = 1,
			["scale"] = 1.253705368041992,
			["threatMode"] = "portraitFrame",
			["values"] = 1,
			["healprediction"] = 1,
			["elite"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["enable"] = 1,
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
				{
					["enable"] = 1,
					["name"] = "DEATHKNIGHT",
				}, -- [10]
				{
					["enable"] = 1,
					["name"] = "MONK",
				}, -- [11]
				{
					["enable"] = 1,
					["name"] = "DEMONHUNTER",
				}, -- [12]
			},
			["healprediction"] = 1,
			["precisionPercent"] = 1,
			["anchor"] = "TOP",
			["size"] = {
				["width"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["precisionManaPercent"] = 1,
			["gap"] = 0,
			["manaPercent"] = 1,
			["titles"] = 1,
			["spacing"] = 0,
			["scale"] = 0.6888905334472656,
			["absorbs"] = 1,
			["mana"] = 1,
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["right"] = 1,
				["size"] = 20,
				["inside"] = 1,
			},
			["percent"] = 1,
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
				1, -- [10]
				1, -- [11]
				1, -- [12]
			},
		},
		["minimap"] = {
			["pos"] = 3.96154333312622,
			["radius"] = 78,
		},
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 1,
				["b"] = 0.5,
				["g"] = 0.5,
				["r"] = 0.5,
			},
			["reaction"] = {
				["tapped"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["none"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["neutral"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["unfriendly"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["friend"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["enemy"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
			["classbarBright"] = 1,
			["frame"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["b"] = 0.25,
					["g"] = 0.25,
					["r"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["b"] = 0.1,
					["g"] = 0.1,
					["r"] = 0.1,
				},
			},
			["class"] = 1,
			["bar"] = {
				["rage"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["absorb"] = {
					["a"] = 0.7,
					["b"] = 0.7,
					["g"] = 0.33,
					["r"] = 0.14,
				},
				["fury"] = {
					["b"] = 0.992,
					["g"] = 0.259,
					["r"] = 0.788,
				},
				["mana"] = {
					["b"] = 1,
					["g"] = 0,
					["r"] = 0,
				},
				["healthEmpty"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["pain"] = {
					["b"] = 0,
					["g"] = 0.611,
					["r"] = 1,
				},
				["healprediction"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 0,
				},
				["healthFull"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["maelstrom"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0,
				},
				["focus"] = {
					["b"] = 0.25,
					["g"] = 0.5,
					["r"] = 1,
				},
				["runic_power"] = {
					["b"] = 1,
					["g"] = 0.82,
					["r"] = 0,
				},
				["insanity"] = {
					["b"] = 0.8,
					["g"] = 0,
					["r"] = 0.4,
				},
				["energy"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["lunar"] = {
					["b"] = 0.9,
					["g"] = 0.52,
					["r"] = 0.3,
				},
			},
		},
		["pet"] = {
			["happiness"] = {
				["enabled"] = 1,
			},
			["debuffs"] = {
				["size"] = 18,
			},
			["threatMode"] = "nameFrame",
			["scale"] = 0.5046173477172852,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 18,
			},
			["castBar"] = {
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["xperlOldroleicons"] = 1,
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 25,
			},
			["portrait"] = 1,
			["scale"] = 1.253705368041992,
			["castBar"] = {
				["enable"] = 1,
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 40,
				["lowHP"] = 30,
			},
			["hitIndicator"] = 1,
			["dockRunes"] = 1,
			["level"] = 1,
			["totems"] = {
				["enable"] = true,
				["offsetY"] = 0,
				["offsetX"] = 0,
			},
			["size"] = {
				["width"] = 0,
			},
			["healerMode"] = {
				["enable"] = false,
				["type"] = 1,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["lockRunes"] = 1,
			["extendPortrait"] = 1,
			["xpBar"] = 1,
			["showRunes"] = 1,
			["healprediction"] = 1,
			["threatMode"] = "portraitFrame",
			["classPortrait"] = 1,
			["absorbs"] = 1,
			["values"] = 1,
			["buffs"] = {
				["above"] = 1,
				["enable"] = 1,
				["wrap"] = 1,
				["flash"] = 1,
				["count"] = 40,
				["maxrows"] = 2,
				["rows"] = 2,
				["hideBlizzard"] = 1,
				["cooldown"] = 1,
				["size"] = 25,
			},
			["percent"] = 1,
			["repBar"] = 1,
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["partypet"] = {
			["healerMode"] = {
				["type"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 12,
				["castable"] = 0,
			},
			["enable"] = 1,
			["mana"] = 1,
			["scale"] = 0.7,
			["size"] = {
				["width"] = 0,
			},
		},
		["pettarget"] = {
			["absorbs"] = 1,
			["debuffs"] = {
				["curable"] = 0,
				["size"] = 29,
			},
			["healprediction"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["transparency"] = {
			["text"] = 1,
			["frame"] = 1,
		},
		["custom"] = {
			["enable"] = true,
			["zones"] = {
				["Ulduar"] = {
					[61888] = true,
					[62331] = true,
					[62589] = true,
					[62717] = true,
					[62532] = true,
					[61969] = true,
					[63042] = true,
					[63802] = true,
					[62861] = true,
					[62928] = true,
					[62680] = true,
					[62997] = true,
					[62188] = true,
					[63830] = true,
					[64153] = true,
					[64157] = true,
					[62470] = true,
					[64125] = true,
					[64152] = true,
					[64156] = true,
					[63322] = true,
					[63276] = true,
					[64668] = true,
					[62055] = true,
					[63666] = true,
					[61903] = true,
					[63024] = true,
					[64290] = true,
					[62526] = true,
					[62130] = true,
					[62042] = true,
					[63355] = true,
					[63018] = true,
					[62469] = true,
				},
				["The Battle for Mount Hyjal"] = {
					[39941] = true,
					[31347] = true,
				},
				["Dragon Soul"] = {
					[105479] = true,
					[106199] = true,
					[109325] = true,
					[108649] = true,
					[106730] = true,
					[105171] = true,
					[105490] = true,
					[106794] = true,
					[107439] = true,
					[109075] = true,
					[103434] = true,
					[110214] = true,
				},
				["Blackwing Descent"] = {
					[79888] = true,
					[77699] = true,
					[77760] = true,
					[79501] = true,
					[78092] = true,
					[79318] = true,
					[79339] = true,
					[77786] = true,
					[89084] = true,
					[82935] = true,
					[92685] = true,
					[80094] = true,
					[89773] = true,
					[78941] = true,
					[92053] = true,
				},
				["Black Temple"] = {
					[41917] = true,
					[38132] = true,
					[40585] = true,
					[40251] = true,
					[40932] = true,
					[43581] = true,
					[39837] = true,
					[41001] = true,
					[46787] = true,
				},
				["Tomb of Sargeras"] = {
					[238429] = true,
					[236449] = true,
					[240209] = true,
					[235240] = true,
					[235213] = true,
					[235222] = true,
				},
				["Naxxramas"] = {
					[29306] = true,
					[29310] = true,
					[29213] = true,
					[28542] = true,
					[27819] = true,
					[29998] = true,
					[28622] = true,
					[54121] = true,
					[27808] = true,
					[28169] = true,
					[28410] = true,
					[29212] = true,
					[54378] = true,
				},
				["Baradin Hold"] = {
					[88954] = true,
				},
				["Antorus, the Burning Throne"] = {
					[57407] = true,
					[56272] = true,
				},
				["Serpentshrine Cavern"] = {
					[38132] = true,
				},
				["Trial of the Crusader"] = {
					[66237] = true,
					[67700] = true,
					[65775] = true,
				},
				["The Obsidian Sanctum"] = {
					[39647] = true,
					[60708] = true,
					[57491] = true,
				},
				["Karazhan"] = {
					[34661] = true,
					[30753] = true,
				},
				["Throne of the Four Winds"] = {
					[93057] = true,
					[89668] = true,
					[84645] = true,
				},
				["The Bastion of Twilight"] = {
					[86622] = true,
					[86788] = true,
					[83099] = true,
					[82665] = true,
					[82772] = true,
					[88518] = true,
					[92075] = true,
					[89421] = true,
					[91317] = true,
					[92307] = true,
					[82660] = true,
					[92067] = true,
					[84948] = true,
				},
				["Sunwell Plateau"] = {
					[45662] = true,
					[45342] = true,
					[45141] = true,
					[45641] = true,
					[45855] = true,
				},
				["The Ruby Sanctum"] = {
					[74505] = true,
					[74453] = true,
					[74562] = true,
					[74792] = true,
					[74367] = true,
					[74456] = true,
				},
				["Icecrown Citadel"] = {
					[72293] = true,
					[72855] = true,
					[71340] = true,
					[73020] = true,
					[69674] = true,
					[70672] = true,
					[70337] = true,
					[69409] = true,
					[70126] = true,
					[69762] = true,
					[71283] = true,
					[70541] = true,
					[71473] = true,
					[71289] = true,
					[72438] = true,
					[68980] = true,
					[69065] = true,
					[70751] = true,
					[70447] = true,
				},
				["Firelands"] = {
					[99837] = true,
					[99838] = true,
					[99526] = true,
					[101223] = true,
					[98584] = true,
					[98450] = true,
					[99516] = true,
					[98928] = true,
					[99849] = true,
					[100460] = true,
					[99476] = true,
					[99402] = true,
				},
			},
			["blend"] = "ADD",
			["alpha"] = 0.5,
		},
		["party"] = {
			["debuffs"] = {
				["halfSize"] = 1,
				["below"] = 1,
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 32,
			},
			["portrait"] = 1,
			["enable"] = 1,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
			["inRaid"] = 1,
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 1.003705215454102,
			["hitIndicator"] = 1,
			["target"] = {
				["enable"] = 1,
				["size"] = 120,
				["large"] = 1,
			},
			["classPortrait"] = 1,
			["values"] = 1,
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["absorbs"] = 1,
			["healprediction"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["focus"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["elite"] = 1,
			["threat"] = 1,
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["absorbs"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["values"] = 1,
			["healprediction"] = 1,
			["scale"] = 1.253705368041992,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["buffs"] = {
			["countdown"] = 1,
			["countdownStart"] = 20,
			["cooldown"] = 1,
			["ignoreSeasonal"] = 1,
		},
		["maximumScale"] = 1.5,
		["optionsColour"] = {
			["b"] = 0.2,
			["g"] = 0.2,
			["r"] = 0.7,
		},
	},
	["savedPositions"] = {
		["Draenor"] = {
			["Fremdschämen"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 395,
					["height"] = 250.0000152587891,
					["left"] = 785.0001220703125,
					["width"] = 349.9999694824219,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 662.0000610351562,
					["height"] = 124.0000076293945,
					["left"] = 901.6666870117188,
					["width"] = 330,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 860.0001220703125,
					["width"] = 199.9999084472656,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 856.9999389648438,
					["width"] = 206.0001068115234,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 366.4897549152374,
					["width"] = false,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999389648438,
					["height"] = 150,
					["left"] = 890.0000610351562,
					["width"] = 140,
				},
				["XPerl_Player"] = {
					["top"] = 347.1232741822387,
					["height"] = false,
					["left"] = 988.6684374660035,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 829.2589336317105,
					["height"] = false,
					["left"] = 650.4118846755046,
					["width"] = false,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 759.6657762329414,
					["height"] = false,
					["left"] = 161.067040830344,
					["width"] = false,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 1124.833374023438,
					["height"] = 540.0001220703125,
					["left"] = 1130.499145507813,
					["width"] = 740.0001831054688,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 52.35568452942289,
					["width"] = false,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 418.8454762353831,
					["width"] = false,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 209.4227381176916,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 238.090032317552,
					["height"] = false,
					["left"] = 995.1422175685584,
					["width"] = false,
				},
				["XPerl_Focus"] = {
					["top"] = 829.2590022914883,
					["height"] = false,
					["left"] = 339.754158616066,
					["width"] = false,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 261.7784173912969,
					["width"] = false,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 660,
					["height"] = 240.0000152587891,
					["left"] = 709.9998779296875,
					["width"] = 500.0000610351563,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 471.2011555089885,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 1193.277521738055,
					["height"] = false,
					["left"] = 31.16662321891681,
					["width"] = false,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 523.5568347825938,
					["width"] = false,
				},
				["XPerl_Raid_Title12"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 575.9124720096588,
					["width"] = false,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 314.1340756416321,
					["width"] = false,
				},
				["XPerl_Target"] = {
					["top"] = 347.4553331731258,
					["height"] = false,
					["left"] = 1290.587919388156,
					["width"] = false,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 349.1000428829866,
					["height"] = false,
					["left"] = 1612.167648326198,
					["width"] = false,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 104.7113690588458,
					["width"] = false,
				},
			},
			["Derptarogar"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 455,
					["height"] = 250.0000152587891,
					["left"] = 891.6665649414062,
					["width"] = 350.0000305175781,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 662.0000610351562,
					["height"] = 124.0000076293945,
					["left"] = 901.6666870117188,
					["width"] = 330,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 640,
					["height"] = 80.00001525878906,
					["left"] = 966.6668090820312,
					["width"] = 199.9998779296875,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 640,
					["height"] = 80.00001525878906,
					["left"] = 963.666748046875,
					["width"] = 205.9998931884766,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 664.6667059898937,
					["height"] = false,
					["left"] = 64.76674053626766,
					["width"] = false,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 675.0000610351562,
					["height"] = 150,
					["left"] = 996.666748046875,
					["width"] = 140.0000305175781,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 966.6668701171875,
					["height"] = 540.0001220703125,
					["left"] = 1003.33251953125,
					["width"] = 740.0001831054688,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 323.3672888046112,
					["height"] = false,
					["left"] = 1524.667649816314,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 1039.999860218595,
					["height"] = false,
					["left"] = 416.3000417385774,
					["width"] = false,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 828.7181366713776,
					["height"] = false,
					["left"] = 181.951231551302,
					["width"] = false,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 827.99991468191,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_Player"] = {
					["top"] = 258.3670700243965,
					["height"] = false,
					["left"] = 1040.699047315902,
					["width"] = false,
				},
				["XPerl_PetTarget"] = {
					["top"] = 79.66643617380623,
					["height"] = false,
					["left"] = 1349.500428678301,
					["width"] = false,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 663.8334697001847,
					["height"] = false,
					["left"] = 123.0666495884179,
					["width"] = false,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 827.99991468191,
					["height"] = false,
					["left"] = 243.2000280380253,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 154.1921339407563,
					["height"] = false,
					["left"] = 1042.598545673303,
					["width"] = false,
				},
				["XPerl_Focus"] = {
					["top"] = 1039.999917840956,
					["height"] = false,
					["left"] = 216.8000032305718,
					["width"] = false,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 827.1665352401396,
					["height"] = false,
					["left"] = 304.8335280836454,
					["width"] = false,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 720.0000610351562,
					["height"] = 239.9999694824219,
					["left"] = 816.6668090820312,
					["width"] = 499.9999389648438,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 663.8334697001847,
					["height"] = false,
					["left"] = 3.133251685313212,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 1188.333366649749,
					["height"] = false,
					["left"] = 29.16665019826269,
					["width"] = false,
				},
				["XPerl_Raid_Title12"] = {
					["top"] = 665.499984326143,
					["height"] = false,
					["left"] = 307.1335579327479,
					["width"] = false,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 665.4998161399817,
					["height"] = false,
					["left"] = 247.1667190450535,
					["width"] = false,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 665.5000263726834,
					["height"] = false,
					["left"] = 185.5334286012112,
					["width"] = false,
				},
				["XPerl_Target"] = {
					["top"] = 259.2002591757446,
					["height"] = false,
					["left"] = 1334.078579562061,
					["width"] = false,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 827.99991468191,
					["height"] = false,
					["left"] = 60.80000700950632,
					["width"] = false,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 827.99991468191,
					["height"] = false,
					["left"] = 121.6000140190126,
					["width"] = false,
				},
			},
			["Spießer"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 395,
					["height"] = 250.0000152587891,
					["left"] = 785.0001220703125,
					["width"] = 349.9999694824219,
				},
				["XPerl_Focus"] = {
					["top"] = 829.2590022914883,
					["height"] = false,
					["left"] = 339.754158616066,
					["width"] = false,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 860.0001220703125,
					["width"] = 199.9999084472656,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 580,
					["height"] = 80,
					["left"] = 856.9999389648438,
					["width"] = 206.0001068115234,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 366.4897549152374,
					["width"] = false,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999389648438,
					["height"] = 150,
					["left"] = 890.0000610351562,
					["width"] = 140,
				},
				["XPerl_Player"] = {
					["top"] = 219.9554317470538,
					["height"] = false,
					["left"] = 996.8352751153652,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 829.2589336317105,
					["height"] = false,
					["left"] = 650.4118846755046,
					["width"] = false,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 157.067037820816,
					["width"] = false,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 0,
					["width"] = false,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 810.0000610351562,
					["height"] = 540.0001220703125,
					["left"] = 589.9999389648438,
					["width"] = 740.0001220703125,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 52.35568452942289,
					["width"] = false,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 418.8454762353831,
					["width"] = false,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 209.4227381176916,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 102.0893855856721,
					["height"] = false,
					["left"] = 1001.975495160121,
					["width"] = false,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 602,
					["height"] = 124.0000076293945,
					["left"] = 795,
					["width"] = 330.0000305175781,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 261.7784173912969,
					["width"] = false,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 660,
					["height"] = 240.0000152587891,
					["left"] = 709.9998779296875,
					["width"] = 500.0000610351563,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 471.2011555089885,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 1056.444265161845,
					["height"] = false,
					["left"] = 53.99997414828249,
					["width"] = false,
				},
				["XPerl_Raid_Title11"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 523.5568347825938,
					["width"] = false,
				},
				["XPerl_Raid_Title12"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 575.9124720096588,
					["width"] = false,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 314.1340756416321,
					["width"] = false,
				},
				["XPerl_Target"] = {
					["top"] = 1060.955525741214,
					["height"] = false,
					["left"] = 387.7540719928729,
					["width"] = false,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1056.599823314806,
					["height"] = false,
					["left"] = 720.0000609806593,
					["width"] = false,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 759.6658603260221,
					["height"] = false,
					["left"] = 104.7113690588458,
					["width"] = false,
				},
			},
		},
	},
	["ConfigVersion"] = "6.1.5 release",
}
ZPerlConfigSavePerCharacter = nil
ZPerlImportDone = nil
