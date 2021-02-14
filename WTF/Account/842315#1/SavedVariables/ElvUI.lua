
ElvDB = {
	["profileKeys"] = {
		["Derptarogar - Draenor"] = "Luckyone DPS/TANK",
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Draenor"] = {
			["Derptarogar"] = "ROGUE",
		},
	},
	["profiles"] = {
		["Rogue v1 - Shadowlands"] = {
			["actionbar"] = {
				["microbar"] = {
					["buttons"] = 11,
				},
			},
			["dbConverted"] = 12.16,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,362,267",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,328,-311",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,44,112",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,439,-4",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,127",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,740,102",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-231",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-423,-298",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-162,99",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,506,-231",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-117,208",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,265",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-314,373",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-102,-323",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-167,66",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-477,254",
			},
			["chat"] = {
				["useBTagName"] = true,
			},
		},
		["Default"] = {
			["actionbar"] = {
				["microbar"] = {
					["buttons"] = 11,
				},
			},
			["dbConverted"] = 12.16,
		},
		["Luckyone DPS/TANK"] = {
			["databars"] = {
				["threat"] = {
					["enable"] = false,
					["width"] = 10,
					["font"] = "Expressway",
					["orientation"] = "VERTICAL",
					["height"] = 171,
				},
				["honor"] = {
					["height"] = 171,
					["enable"] = false,
					["width"] = 10,
					["font"] = "Expressway",
					["orientation"] = "VERTICAL",
				},
				["reputation"] = {
					["enable"] = true,
					["height"] = 171,
					["width"] = 10,
					["font"] = "Expressway",
					["orientation"] = "VERTICAL",
				},
				["experience"] = {
					["questCompletedOnly"] = true,
					["width"] = 10,
					["font"] = "Expressway",
					["orientation"] = "VERTICAL",
					["height"] = 171,
				},
				["azerite"] = {
					["enable"] = false,
					["width"] = 10,
					["font"] = "Expressway",
					["hideAtMaxLevel"] = false,
					["height"] = 171,
					["orientation"] = "VERTICAL",
				},
			},
			["general"] = {
				["interruptAnnounce"] = "SAY",
				["durabilityScale"] = 0.5,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.05882352941176471,
					["g"] = 0.05882352941176471,
					["b"] = 0.05882352941176471,
				},
				["valuecolor"] = {
					["r"] = 0.9999977946281433,
					["g"] = 0.9568606615066528,
					["b"] = 0.4078422486782074,
				},
				["enhancedPvpMessages"] = false,
				["loginmessage"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
					["itemLevelFontSize"] = 11,
				},
				["vehicleSeatIndicatorSize"] = 64,
				["font"] = "Expressway",
				["altPowerBar"] = {
					["statusBar"] = "Solid",
					["width"] = 275,
					["font"] = "Expressway",
				},
				["fontSize"] = 11,
				["fontStyle"] = "NONE",
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationText"] = "SHOW",
					["locationFontSize"] = 14,
					["resetZoom"] = {
						["time"] = 15,
					},
					["icons"] = {
						["difficulty"] = {
							["scale"] = 0.9,
							["position"] = "TOPRIGHT",
						},
						["lfgEye"] = {
							["scale"] = 1.1,
							["position"] = "BOTTOMLEFT",
							["xOffset"] = -2,
							["yOffset"] = -2,
						},
					},
					["size"] = 240,
				},
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 600,
				["smoothingAmount"] = 0.75,
				["backdropcolor"] = {
					["r"] = 0.10196078431373,
					["g"] = 0.10196078431373,
					["b"] = 0.10196078431373,
				},
				["talkingHeadFrameScale"] = 0.72,
				["objectiveFrameAutoHide"] = false,
				["bonusObjectivePosition"] = "AUTO",
				["totems"] = {
					["enable"] = false,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Expressway",
				["itemLevelFontOutline"] = "OUTLINE",
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 414,
				["countFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankWidth"] = 414,
				["transparent"] = true,
				["cooldown"] = {
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["clearSearchOnClose"] = true,
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 14,
					["maxWraps"] = 2,
					["horizontalSpacing"] = 2,
					["size"] = 26,
					["countFont"] = "Expressway",
					["timeFont"] = "Expressway",
					["countFontOutline"] = "OUTLINE",
					["timeFontOutline"] = "OUTLINE",
					["timeFontSize"] = 12,
				},
				["cooldown"] = {
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["buffs"] = {
					["horizontalSpacing"] = 2,
					["size"] = 26,
					["countFont"] = "Expressway",
					["timeFont"] = "Expressway",
					["countFontOutline"] = "OUTLINE",
					["timeFontOutline"] = "OUTLINE",
					["countFontSize"] = 14,
					["timeFontSize"] = 12,
				},
			},
			["dbConverted"] = 12.16,
			["movers"] = {
				["ElvAB_8"] = "BOTTOM,ElvUIParent,BOTTOM,0,197",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-529,470",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-266,-4",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-161",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,242,348",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,277,4",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,0,-160",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,231,4",
				["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,153,-166",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-277,-219",
				["VehicleSeatMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,56",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-529,320",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-492",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-179",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,203",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,35,108",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-416,1",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-60,-268",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,173",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,801,102",
				["DTPanelLuckyone_ActionBars_DTMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,1",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,240,-335",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,173",
				["ElvAB_7"] = "BOTTOM,ElvUIParent,BOTTOM,0,168",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,1",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,1048",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-4",
				["ThreatBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-438,1",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,37,130",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,505,-4",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,0,-116",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,157",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,254,470",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,153",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,512,4",
				["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-78",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,254,301",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,451,4",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,173",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,254,320",
				["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,405,-1",
				["TalkingHeadFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,174",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,243",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,512,34",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-60,173",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,53",
				["ElvAB_2"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1,-343",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,0,-67",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,427,1",
				["SLEGhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-160",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-472,4",
				["ArtifactBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,16",
				["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,173",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,18",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,228,121",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-57",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,35,86",
				["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,421",
				["MasterExperienceMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,343,-299",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,499,-130",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-187",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-427,1",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,80",
				["ElvAB_10"] = "BOTTOM,ElvUIParent,BOTTOM,0,255",
				["MirrorTimer2Mover"] = "TOP,ElvUIParent,TOP,0,-97",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,246,-4",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,1",
				["ElvAB_9"] = "BOTTOM,ElvUIParent,BOTTOM,0,226",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-139",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-266,-132",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["tooltip"] = {
				["headerFontSize"] = 11,
				["showMount"] = false,
				["fontOutline"] = "OUTLINE",
				["showElvUIUsers"] = true,
				["healthBar"] = {
					["statusPosition"] = "DISABLED",
					["font"] = "Expressway",
					["height"] = 4,
					["fontSize"] = 11,
				},
				["alwaysShowRealm"] = true,
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["itemCount"] = "NONE",
				["smallTextFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Solid",
				["units"] = {
					["pet"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,Personal,nonPersonal",
							["countFont"] = "Expressway",
							["attachTo"] = "BUFFS",
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["buffIndicator"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconAttachedTo"] = "Castbar",
							["iconXOffset"] = 0,
							["iconSize"] = 10,
							["width"] = 80,
							["height"] = 10,
							["enable"] = false,
						},
						["customTexts"] = {
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor]Pet",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "NONE",
						},
						["disableMouseoverGlow"] = true,
						["width"] = 80,
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
							["transparent"] = true,
						},
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["height"] = 30,
						["buffs"] = {
							["priority"] = "Blacklist,Personal,PlayerBuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["power"] = {
							["powerPrediction"] = true,
							["height"] = 6,
						},
						["name"] = {
							["text_format"] = "",
						},
					},
					["tank"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["height"] = 24,
						["verticalSpacing"] = 4,
					},
					["targettargettarget"] = {
						["debuffs"] = {
							["countFont"] = "Expressway",
						},
						["disableMouseoverGlow"] = true,
						["buffs"] = {
							["countFont"] = "Expressway",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["yOffset"] = 11,
							["spacing"] = 0,
							["priority"] = "Blacklist,Personal",
							["numrows"] = 2,
							["countFont"] = "Expressway",
							["xOffset"] = -1,
						},
						["disableTargetGlow"] = true,
						["spacing"] = 20,
						["health"] = {
							["xOffset"] = 0,
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 1,
								["size"] = 14,
							},
							["Luckyone_Power"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["width"] = 200,
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 45,
							["yOffset"] = 0,
							["anchorPoint"] = "RIGHT",
							["priority"] = "Blacklist,Dispellable",
							["perrow"] = 2,
							["xOffset"] = 1,
						},
						["castbar"] = {
							["width"] = 200,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 45,
							["yOffset"] = 0,
							["priority"] = "Blacklist,CCDebuffs,Personal",
							["countFont"] = "Expressway",
							["perrow"] = 2,
							["maxDuration"] = 0,
							["xOffset"] = -1,
						},
						["spacing"] = 20,
						["health"] = {
							["xOffset"] = 0,
							["text_format"] = "",
						},
						["pvpclassificationindicator"] = {
							["size"] = 32,
						},
						["power"] = {
							["text_format"] = "",
							["xOffset"] = 0,
							["height"] = 6,
						},
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 1,
								["size"] = 14,
							},
							["Luckyone_Power"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["width"] = 240,
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 45,
						["buffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 45,
							["yOffset"] = 0,
							["anchorPoint"] = "RIGHT",
							["priority"] = "Blacklist,TurtleBuffs,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
							["maxDuration"] = 0,
							["xOffset"] = 1,
						},
						["pvpTrinket"] = {
							["position"] = "LEFT",
							["xOffset"] = -1,
							["size"] = 45,
						},
					},
					["focustarget"] = {
						["debuffs"] = {
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
							["attachTo"] = "BUFFS",
						},
						["disableTargetGlow"] = true,
						["enable"] = true,
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["power"] = {
							["powerPrediction"] = true,
							["height"] = 6,
						},
						["customTexts"] = {
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 80,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 30,
						["buffs"] = {
							["priority"] = "Blacklist,Personal,PlayerBuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
						},
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["power"] = {
							["powerPrediction"] = true,
							["height"] = 6,
						},
						["customTexts"] = {
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 80,
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "",
						},
						["height"] = 30,
						["buffs"] = {
							["countFont"] = "Expressway",
						},
						["portrait"] = {
							["overlay"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["yOffset"] = 1,
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["countFont"] = "Expressway",
							["desaturate"] = false,
							["maxDuration"] = 0,
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["width"] = 190,
							["timeToHold"] = 2,
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 5,
							["scale"] = 0.5,
						},
						["CombatIcon"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "FRAME",
							["height"] = 17,
							["maxBars"] = 15,
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "NONE",
						["power"] = {
							["text_format"] = "",
							["powerPrediction"] = true,
							["position"] = "RIGHT",
							["height"] = 6,
							["xOffset"] = -2,
							["detachedWidth"] = 189,
						},
						["customTexts"] = {
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%] || [health:current]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_Level"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][level][classificationcolor][ >classification]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 12,
							},
							["Luckyone_Power"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "NONE",
						},
						["disableMouseoverGlow"] = true,
						["width"] = 190,
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "",
							["yOffset"] = 20,
						},
						["orientation"] = "LEFT",
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 23,
							["yOffset"] = 1,
							["priority"] = "Blacklist,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
						},
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "",
						},
					},
					["focus"] = {
						["debuffs"] = {
							["yOffset"] = 1,
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["countFont"] = "Expressway",
							["desaturate"] = false,
							["maxDuration"] = 0,
							["perrow"] = 8,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["timeToHold"] = 2,
						},
						["CombatIcon"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["maxBars"] = 15,
							["attachTo"] = "FRAME",
							["height"] = 17,
							["detachedWidth"] = 270,
						},
						["threatStyle"] = "NONE",
						["power"] = {
							["powerPrediction"] = true,
							["position"] = "RIGHT",
							["height"] = 6,
							["xOffset"] = -2,
							["detachedWidth"] = 189,
						},
						["customTexts"] = {
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%] || [health:current]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_Level"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][level][classificationcolor][ >classification]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 12,
							},
							["Luckyone_Power"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "NONE",
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
							["transparent"] = true,
						},
						["disableTargetGlow"] = true,
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["height"] = 30,
						["orientation"] = "LEFT",
						["buffs"] = {
							["sizeOverride"] = 23,
							["enable"] = true,
							["yOffset"] = 1,
							["anchorPoint"] = "TOPRIGHT",
							["priority"] = "Blacklist,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 2,
							["maxDuration"] = 0,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "",
							["yOffset"] = 20,
						},
					},
					["party"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 40,
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
							["perrow"] = 3,
							["maxDuration"] = 0,
							["xOffset"] = 1,
						},
						["classbar"] = {
							["height"] = 6,
							["fill"] = "spaced",
						},
						["targetsGroup"] = {
							["height"] = 10,
						},
						["threatStyle"] = "BORDERS",
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["healPrediction"] = {
							["enable"] = true,
							["absorbStyle"] = "NONE",
						},
						["infoPanel"] = {
							["height"] = 17,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "",
						},
						["height"] = 40,
						["buffs"] = {
							["countFont"] = "Expressway",
							["perrow"] = 3,
						},
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["size"] = 14,
						},
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "DOWN_RIGHT",
						["phaseIndicator"] = {
							["xOffset"] = -50,
							["scale"] = 0.5,
						},
						["buffIndicator"] = {
							["size"] = 12,
						},
						["roleIcon"] = {
							["yOffset"] = 0,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["size"] = 16,
						},
						["power"] = {
							["text_format"] = "",
							["yOffset"] = 2,
							["position"] = "BOTTOMRIGHT",
							["height"] = 3,
							["enable"] = false,
						},
						["summonIcon"] = {
							["xOffset"] = 50,
							["size"] = 25,
						},
						["width"] = 150,
						["health"] = {
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["petsGroup"] = {
							["anchorPoint"] = "LEFT",
							["height"] = 20,
						},
						["verticalSpacing"] = 4,
					},
					["raid40"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
							["desaturate"] = false,
							["maxDuration"] = 0,
						},
						["classbar"] = {
							["height"] = 6,
							["fill"] = "spaced",
						},
						["threatStyle"] = "NONE",
						["name"] = {
							["text_format"] = "[namecolor][name:veryshort]",
						},
						["height"] = 26,
						["verticalSpacing"] = 1,
						["visibility"] = "[@raid31,noexists] hide;show",
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["enable"] = true,
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["size"] = 18,
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "RIGHT",
							["scale"] = 0.5,
						},
						["summonIcon"] = {
							["attachTo"] = "LEFT",
						},
						["width"] = 82,
						["health"] = {
							["text_format"] = "",
						},
					},
					["raidpet"] = {
						["threatStyle"] = "NONE",
						["health"] = {
							["text_format"] = "[perhp<%]",
						},
					},
					["assist"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["height"] = 24,
						["verticalSpacing"] = 4,
					},
					["raid"] = {
						["debuffs"] = {
							["countFontSize"] = 14,
							["sizeOverride"] = 24,
							["enable"] = true,
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
							["desaturate"] = false,
							["maxDuration"] = 0,
							["xOffset"] = 1,
							["perrow"] = 2,
						},
						["groupSpacing"] = 6,
						["classbar"] = {
							["height"] = 6,
							["fill"] = "spaced",
						},
						["threatStyle"] = "NONE",
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:medium]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "WRAPPED",
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "LEFT",
							["text_format"] = "",
						},
						["height"] = 24,
						["verticalSpacing"] = 1,
						["visibility"] = "[@raid6,noexists][@raid31,exists] hide;show",
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["xOffset"] = -15,
							["size"] = 12,
							["attachToObject"] = "Health",
							["yOffset"] = 0,
						},
						["horizontalSpacing"] = -1,
						["rdebuffs"] = {
							["fontSize"] = 15,
							["enable"] = false,
							["duration"] = {
								["color"] = {
									["g"] = 0.070588235294118,
									["b"] = 0.098039215686274,
								},
							},
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["stack"] = {
								["xOffset"] = 10,
								["position"] = "RIGHT",
								["yOffset"] = 0,
							},
							["xOffset"] = 85,
							["size"] = 25,
						},
						["numGroups"] = 6,
						["growthDirection"] = "DOWN_RIGHT",
						["resurrectIcon"] = {
							["size"] = 25,
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "LEFT",
							["scale"] = 0.5,
						},
						["roleIcon"] = {
							["xOffset"] = 0,
							["damager"] = false,
							["position"] = "RIGHT",
							["yOffset"] = 0,
							["size"] = 14,
						},
						["readycheckIcon"] = {
							["attachTo"] = "Frame",
							["xOffset"] = 48,
						},
						["power"] = {
							["enable"] = false,
						},
						["summonIcon"] = {
							["xOffset"] = 35,
							["size"] = 25,
						},
						["width"] = 140,
						["health"] = {
							["text_format"] = "",
						},
						["groupsPerRowCol"] = 6,
					},
					["player"] = {
						["debuffs"] = {
							["yOffset"] = 1,
							["anchorPoint"] = "TOPRIGHT",
							["countFont"] = "Expressway",
							["desaturate"] = false,
						},
						["classbar"] = {
							["enable"] = false,
							["height"] = 6,
						},
						["pvpIcon"] = {
							["scale"] = 0.86,
						},
						["customTexts"] = {
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current] || [perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
							["Luckyone_Level"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][level]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:veryshort]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 12,
							},
							["Luckyone_Power"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "NONE",
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "TOPRIGHT",
							["yOffset"] = 20,
						},
						["height"] = 58,
						["buffs"] = {
							["yOffset"] = 1,
							["countFont"] = "Expressway",
							["attachTo"] = "FRAME",
						},
						["raidicon"] = {
							["enable"] = false,
						},
						["pvp"] = {
							["text_format"] = "",
							["position"] = "CENTER",
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "FRAME",
							["height"] = 17,
							["maxBars"] = 15,
						},
						["partyIndicator"] = {
							["enable"] = false,
						},
						["CombatIcon"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["customColor"] = {
								["colorInterrupted"] = {
									["b"] = 0.3019607843137255,
									["g"] = 0.3019607843137255,
									["r"] = 0.3019607843137255,
								},
								["colorBackdrop"] = {
									["b"] = 0.5019607843137255,
									["g"] = 0.5019607843137255,
									["r"] = 0.5019607843137255,
								},
								["colorNoInterrupt"] = {
									["b"] = 0.2509803921568627,
									["g"] = 0.2509803921568627,
									["r"] = 0.7803921568627451,
								},
								["color"] = {
									["b"] = 0.3098039215686275,
									["g"] = 0.3098039215686275,
									["r"] = 0.3098039215686275,
								},
							},
							["customTimeFont"] = {
								["font"] = "Expressway",
							},
							["width"] = 275,
							["height"] = 20,
							["customTextFont"] = {
								["font"] = "Expressway",
							},
							["timeToHold"] = 2,
							["latency"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["width"] = 249,
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "",
						},
						["RestIcon"] = {
							["enable"] = false,
							["texture"] = "RESTING",
						},
						["power"] = {
							["text_format"] = "",
							["powerPrediction"] = true,
							["position"] = "LEFT",
							["height"] = 6,
							["xOffset"] = 2,
						},
					},
					["pettarget"] = {
						["disableMouseoverGlow"] = true,
					},
				},
				["font"] = "Expressway",
				["colors"] = {
					["healthMultiplier"] = 0.75,
					["classResources"] = {
						["comboPoints"] = {
							{
								["r"] = 1,
								["g"] = 0.9607843137254902,
								["b"] = 0.4117647058823529,
							}, -- [1]
							{
								["r"] = 1,
								["g"] = 0.96078431372549,
								["b"] = 0.41176470588235,
							}, -- [2]
							{
								["r"] = 1,
								["g"] = 0,
								["b"] = 0,
							}, -- [3]
						},
					},
					["selection"] = {
						[0] = {
							["g"] = 0.17254901960784,
							["b"] = 0.17254901960784,
						},
					},
					["castbar_backdrop"] = {
						["a"] = 0.70037892460823,
						["r"] = 0.058823529411765,
						["g"] = 0.058823529411765,
						["b"] = 0.058823529411765,
					},
					["disconnected"] = {
						["r"] = 0.8392156862745098,
						["g"] = 0.7490196078431373,
						["b"] = 0.6509803921568628,
					},
					["tapped"] = {
						["b"] = 0.611764705882353,
						["g"] = 0.5686274509803921,
						["r"] = 0.5490196078431373,
					},
					["customcastbarbackdrop"] = true,
					["transparentAurabars"] = true,
					["power_backdrop"] = {
						["r"] = 0.50196078431373,
						["g"] = 0.50196078431373,
						["b"] = 0.50196078431373,
					},
					["auraBarBuff"] = {
						["r"] = 0.9568606615066528,
						["g"] = 0.549018383026123,
						["b"] = 0.7294101715087891,
					},
					["colorhealthbyvalue"] = false,
					["useDeadBackdrop"] = true,
					["health_backdrop_dead"] = {
						["g"] = 0.01176470588235294,
						["b"] = 0.01176470588235294,
					},
					["power"] = {
						["PAIN"] = {
							["r"] = 1,
							["g"] = 0.61176470588235,
							["b"] = 0,
						},
						["FURY"] = {
							["r"] = 0.78823529411765,
							["g"] = 0.25490196078431,
							["b"] = 0.9921568627451,
						},
						["FOCUS"] = {
							["r"] = 1,
							["g"] = 0.50196078431373,
							["b"] = 0.25098039215686,
						},
						["LUNAR_POWER"] = {
							["r"] = 0.3019607843137255,
							["g"] = 0.5215686274509804,
							["b"] = 0.9019607843137255,
						},
						["MANA"] = {
							["r"] = 0,
							["g"] = 0.5019607843137255,
							["b"] = 1,
						},
						["RAGE"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["MAELSTROM"] = {
							["g"] = 0.50196078431373,
						},
						["ENERGY"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.023529411764706,
						["g"] = 1,
						["b"] = 0,
					},
					["transparentHealth"] = true,
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Solid",
						},
					},
					["castNoInterrupt"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0.007843137254902,
					},
					["health"] = {
						["r"] = 0.058823529411765,
						["g"] = 0.058823529411765,
						["b"] = 0.058823529411765,
					},
					["classbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.10196078431373,
						["g"] = 0.10196078431373,
						["b"] = 0.10196078431373,
					},
					["transparentPower"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["cooldown"] = {
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["override"] = false,
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
			},
			["datatexts"] = {
				["font"] = "Expressway",
				["panels"] = {
					["Luckyone_ActionBars_DT"] = {
						"System", -- [1]
						"Combat", -- [2]
						"Durability", -- [3]
						["enable"] = true,
					},
					["MinimapPanel"] = {
						"Time", -- [1]
						["numPoints"] = 1,
						["panelTransparency"] = true,
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
						["panelTransparency"] = true,
					},
					["LeftChatDataPanel"] = {
						["enable"] = false,
						["panelTransparency"] = true,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["bar8"] = {
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["hotkeyTextPosition"] = "TOPLEFT",
				["fontOutline"] = "OUTLINE",
				["bar9"] = {
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["countTextPosition"] = "BOTTOM",
				["bar1"] = {
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["flyoutSize"] = 28,
				["transparent"] = true,
				["font"] = "Expressway",
				["countTextYOffset"] = 1,
				["hotkeyTextYOffset"] = -1,
				["barPet"] = {
					["point"] = "TOPLEFT",
					["alpha"] = 0.75,
					["backdrop"] = false,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["bar10"] = {
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["extraActionButton"] = {
					["scale"] = 0.65,
					["alpha"] = 0.8,
					["clean"] = true,
				},
				["microbar"] = {
					["enabled"] = true,
					["buttons"] = 11,
					["backdrop"] = true,
					["alpha"] = 0.8,
					["buttonSpacing"] = 6,
					["buttonSize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsPerRow"] = 1,
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["rightClickSelfCast"] = true,
				["bar7"] = {
					["alpha"] = 0.75,
					["buttonsize"] = 28,
				},
				["zoneActionButton"] = {
					["scale"] = 0.65,
					["alpha"] = 0.8,
					["clean"] = true,
				},
				["macrotext"] = true,
				["cooldown"] = {
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["override"] = false,
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["bar4"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["point"] = "BOTTOMLEFT",
					["alpha"] = 0.75,
					["buttonsize"] = 28,
					["backdrop"] = false,
				},
			},
			["nameplates"] = {
				["plateSize"] = {
					["personalWidth"] = 165,
					["friendlyWidth"] = 165,
					["enemyHeight"] = 40,
					["personalHeight"] = 40,
					["enemyWidth"] = 165,
					["friendlyHeight"] = 40,
				},
				["lowHealthThreshold"] = 0.5,
				["statusbar"] = "Solid",
				["filters"] = {
					["Luckyone_SOA"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_TOP"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_NW"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_SD"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_MISTS"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_PF"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_DOS"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_HOA"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = -10,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["size"] = 22,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 6,
							["xOffset"] = 1,
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["questIcon"] = {
							["font"] = "Expressway",
							["textPosition"] = "CENTER",
							["size"] = 25,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["eliteIcon"] = {
							["xOffset"] = 3,
							["size"] = 14,
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["title"] = {
							["font"] = "Expressway",
						},
						["health"] = {
							["height"] = 18,
							["text"] = {
								["fontSize"] = 12,
								["parent"] = "Health",
								["yOffset"] = -15,
								["font"] = "Expressway",
								["position"] = "TOPRIGHT",
								["format"] = "[perhp<%]",
							},
						},
						["level"] = {
							["xOffset"] = 3,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["format"] = "",
						},
						["buffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = -10,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Dispellable",
							["size"] = 22,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 2,
							["xOffset"] = -1,
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = 1,
							["yOffset"] = -15,
							["font"] = "Expressway",
							["format"] = "[name:last][classificationcolor][ >classification]",
							["parent"] = "Health",
						},
						["castbar"] = {
							["fontSize"] = 10,
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["iconSize"] = 33,
							["textPosition"] = "ONBAR",
							["iconOffsetY"] = -1,
							["width"] = 165,
							["font"] = "Expressway",
							["height"] = 12,
							["timeToHold"] = 2,
						},
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = 1,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 6,
							["xOffset"] = 1,
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["questIcon"] = {
							["fontSize"] = 14,
							["font"] = "Expressway",
							["textPosition"] = "CENTER",
							["size"] = 16,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["eliteIcon"] = {
							["xOffset"] = 3,
							["size"] = 14,
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["title"] = {
							["enable"] = true,
							["font"] = "Expressway",
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["level"] = {
							["xOffset"] = 3,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["format"] = "[level]",
						},
						["buffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = 1,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Dispellable",
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 2,
						},
						["name"] = {
							["yOffset"] = -10,
							["font"] = "Expressway",
						},
						["castbar"] = {
							["fontSize"] = 10,
							["yOffset"] = -11,
							["iconPosition"] = "LEFT",
							["iconSize"] = 22,
							["textPosition"] = "ONBAR",
							["width"] = 160,
							["font"] = "Expressway",
							["timeToHold"] = 2,
						},
					},
					["PLAYER"] = {
						["level"] = {
							["enable"] = true,
							["yOffset"] = 0,
							["font"] = "Expressway",
						},
						["castbar"] = {
							["yOffset"] = -10,
							["font"] = "Expressway",
							["timeToHold"] = 2,
						},
						["name"] = {
							["enable"] = true,
							["yOffset"] = 0,
							["font"] = "Expressway",
							["format"] = "[namecolor][name]",
						},
						["nameOnly"] = true,
						["power"] = {
							["enable"] = false,
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["debuffs"] = {
							["priority"] = "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs",
							["countFont"] = "Expressway",
						},
						["title"] = {
							["enable"] = true,
							["yOffset"] = 0,
							["font"] = "Expressway",
						},
						["buffs"] = {
							["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
						},
						["visibility"] = {
							["showInCombat"] = false,
							["hideDelay"] = 0,
						},
						["health"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = -10,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["size"] = 22,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 6,
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["level"] = {
							["xOffset"] = 3,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["format"] = "",
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["health"] = {
							["height"] = 18,
							["text"] = {
								["fontSize"] = 12,
								["parent"] = "Health",
								["yOffset"] = -15,
								["font"] = "Expressway",
								["position"] = "TOPRIGHT",
								["format"] = "[perhp<%]",
							},
						},
						["castbar"] = {
							["fontSize"] = 10,
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["iconSize"] = 33,
							["textPosition"] = "ONBAR",
							["iconOffsetY"] = -1,
							["width"] = 165,
							["font"] = "Expressway",
							["height"] = 12,
							["timeToHold"] = 2,
						},
						["buffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = -10,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Dispellable",
							["size"] = 22,
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
							["font"] = "Expressway",
							["numAuras"] = 2,
							["xOffset"] = -1,
						},
						["title"] = {
							["font"] = "Expressway",
							["format"] = "[npctitle]",
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = 1,
							["yOffset"] = -15,
							["font"] = "Expressway",
							["format"] = "[name:medium]",
							["parent"] = "Health",
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = 1,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 6,
							["xOffset"] = 1,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["level"] = {
							["xOffset"] = 3,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["format"] = "[level]",
						},
						["castbar"] = {
							["fontSize"] = 10,
							["yOffset"] = -11,
							["iconPosition"] = "LEFT",
							["iconSize"] = 22,
							["textPosition"] = "ONBAR",
							["width"] = 160,
							["font"] = "Expressway",
							["timeToHold"] = 2,
						},
						["nameOnly"] = true,
						["pvpindicator"] = {
							["size"] = 35,
						},
						["markTanks"] = false,
						["name"] = {
							["yOffset"] = -10,
							["font"] = "Expressway",
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["title"] = {
							["enable"] = true,
							["font"] = "Expressway",
						},
						["buffs"] = {
							["countFontSize"] = 10,
							["fontSize"] = 10,
							["yOffset"] = 1,
							["countPosition"] = "TOP",
							["spacing"] = 0,
							["priority"] = "Blacklist,Dispellable",
							["size"] = 20,
							["countFont"] = "Expressway",
							["font"] = "Expressway",
							["numAuras"] = 2,
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["markHealers"] = false,
					},
				},
				["colors"] = {
					["castColor"] = {
						["g"] = 1,
						["r"] = 0.023529411764706,
					},
					["castbarDesaturate"] = false,
					["glowColor"] = {
						["r"] = 0,
						["b"] = 0.054901960784314,
					},
					["castNoInterruptColor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0.007843137254902,
					},
				},
				["visibility"] = {
					["enemy"] = {
						["guardians"] = true,
						["minions"] = true,
					},
				},
				["cooldown"] = {
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["override"] = false,
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
			},
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["media"] = {
					["fonts"] = {
						["pvp"] = {
							["font"] = "Expressway",
						},
						["gossip"] = {
							["font"] = "Expressway",
							["size"] = 11,
						},
						["objective"] = {
							["outline"] = "OUTLINE",
							["font"] = "Expressway",
							["size"] = 11,
						},
						["objectiveHeader"] = {
							["outline"] = "OUTLINE",
							["font"] = "Expressway",
						},
						["subzone"] = {
							["size"] = 24,
							["font"] = "Expressway",
						},
						["mail"] = {
							["size"] = 11,
							["font"] = "Expressway",
						},
						["zone"] = {
							["size"] = 30,
							["font"] = "Expressway",
						},
						["questFontSuperHuge"] = {
							["size"] = 22,
							["font"] = "Expressway",
						},
					},
				},
				["skins"] = {
					["talkinghead"] = {
						["hide"] = true,
					},
					["objectiveTracker"] = {
						["colorHeader"] = {
							["b"] = 1,
							["g"] = 0,
							["r"] = 0.8196078431372549,
						},
						["classHeader"] = true,
						["underlineClass"] = true,
					},
				},
				["screensaver"] = {
					["subtitle"] = {
						["font"] = "Expressway",
					},
					["date"] = {
						["font"] = "Expressway",
					},
					["keydown"] = true,
					["tips"] = {
						["size"] = 14,
						["font"] = "Expressway",
					},
					["xpack"] = 192,
					["playermodel"] = {
						["enable"] = false,
						["distance"] = 5,
					},
					["height"] = 120,
					["title"] = {
						["font"] = "Expressway",
					},
					["player"] = {
						["font"] = "Expressway",
					},
				},
				["armory"] = {
					["inspect"] = {
						["enchant"] = {
							["fontSize"] = 10,
							["font"] = "Expressway",
							["yOffset"] = -2,
						},
						["gem"] = {
							["xOffset"] = 4,
							["size"] = 11,
						},
						["enable"] = true,
						["background"] = {
							["overlay"] = false,
						},
						["ilvl"] = {
							["colorType"] = "QUALITY",
							["fontSize"] = 11,
							["font"] = "Expressway",
						},
						["gradient"] = {
							["quality"] = true,
						},
					},
					["stats"] = {
						["List"] = {
							["ATTACK_DAMAGE"] = false,
							["PARRY"] = false,
							["BLOCK"] = false,
							["ATTACK_AP"] = true,
						},
						["statFonts"] = {
							["outline"] = "OUTLINE",
							["font"] = "Expressway",
							["size"] = 11,
						},
						["itemLevel"] = {
							["outline"] = "OUTLINE",
							["font"] = "Expressway",
							["size"] = 15,
						},
						["catFonts"] = {
							["outline"] = "OUTLINE",
							["font"] = "Expressway",
						},
					},
					["character"] = {
						["durability"] = {
							["display"] = "Hide",
							["fontSize"] = 11,
							["font"] = "Expressway",
						},
						["gem"] = {
							["xOffset"] = 4,
							["size"] = 11,
						},
						["ilvl"] = {
							["colorType"] = "QUALITY",
							["fontSize"] = 11,
							["font"] = "Expressway",
						},
						["enable"] = true,
						["background"] = {
							["overlay"] = false,
						},
						["gradient"] = {
							["quality"] = true,
						},
						["enchant"] = {
							["fontSize"] = 10,
							["font"] = "Expressway",
							["yOffset"] = -2,
						},
					},
				},
			},
			["cooldown"] = {
				["secondsColor"] = {
					["b"] = 1,
				},
				["threshold"] = 5,
				["fonts"] = {
					["font"] = "Expressway",
					["fontSize"] = 12,
				},
				["expireIndicator"] = {
					["g"] = 0,
					["b"] = 0,
				},
				["hoursIndicator"] = {
					["r"] = 0.4,
				},
				["daysIndicator"] = {
					["g"] = 0.4,
					["r"] = 0.4,
				},
			},
			["chat"] = {
				["historySize"] = 150,
				["showHistory"] = {
					["GUILD"] = false,
					["EMOTE"] = false,
					["CHANNEL"] = false,
					["PARTY"] = false,
					["YELL"] = false,
					["RAID"] = false,
					["INSTANCE"] = false,
					["SAY"] = false,
					["OFFICER"] = false,
				},
				["lfgIcons"] = false,
				["fontOutline"] = "OUTLINE",
				["keywords"] = "%MYNAME%",
				["throttleInterval"] = 0,
				["tabSelector"] = "NONE",
				["panelBackdrop"] = "LEFT",
				["useBTagName"] = true,
				["numScrollMessages"] = 2,
				["separateSizes"] = true,
				["panelHeightRight"] = 171,
				["font"] = "Expressway",
				["panelWidth"] = 451,
				["tabFontSize"] = 11,
				["fade"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeight"] = 250,
				["panelWidthRight"] = 414,
				["editboxHistorySize"] = 30,
				["maxLines"] = 200,
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.7531320899725,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["tabSelectedTextEnabled"] = false,
				["fadeTabsNoBackdrop"] = false,
				["panelTabBackdrop"] = true,
			},
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["Luckyone_AD"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["122973"] = true,
							["122969"] = true,
							["128434"] = true,
							["122972"] = true,
							["127315"] = true,
						},
					},
				},
				["ElvUI_Explosives"] = {
					["actions"] = {
						["color"] = {
							["healthColor"] = {
								["b"] = 1,
								["g"] = 0,
								["r"] = 0.49019607843137,
							},
						},
						["scale"] = 1,
					},
					["triggers"] = {
						["priority"] = 1,
					},
				},
				["Luckyone_KR"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["135235"] = true,
							["135167"] = true,
							["137478"] = true,
							["138489"] = true,
							["134331"] = true,
							["134174"] = true,
							["134158"] = true,
						},
					},
				},
				["ElvUI_Boss"] = {
				},
				["ElvUI_NonTarget"] = {
					["actions"] = {
						["alpha"] = 70,
					},
				},
				["Luckyone_FH"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["130012"] = true,
							["127111"] = true,
							["129529"] = true,
							["126918"] = true,
							["129602"] = true,
							["130404"] = true,
							["129600"] = true,
						},
					},
				},
				["Luckyone_YARD"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["150250"] = true,
							["150168"] = true,
							["150160"] = true,
							["150292"] = true,
							["150297"] = true,
							["150251"] = true,
							["150146"] = true,
						},
					},
				},
				["Luckyone_SOTS"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["134417"] = true,
							["134150"] = true,
							["136186"] = true,
							["134423"] = true,
							["134514"] = true,
							["136297"] = true,
							["136214"] = true,
							["134139"] = true,
						},
					},
				},
				["Luckyone_ML"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["136934"] = true,
							["130661"] = true,
							["129802"] = true,
							["134232"] = true,
							["133593"] = true,
							["133430"] = true,
							["136470"] = true,
						},
					},
				},
				["ElvUI_Target"] = {
					["actions"] = {
						["scale"] = 1,
					},
				},
				["Luckyone_WORK"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["151657"] = true,
							["144294"] = true,
							["151325"] = true,
							["144293"] = true,
						},
					},
				},
				["Luckyone_SIEGE"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["129367"] = true,
							["141284"] = true,
							["138019"] = true,
							["141283"] = true,
							["137614"] = true,
							["138465"] = true,
							["137517"] = true,
							["129370"] = true,
						},
					},
				},
				["Luckyone_WM"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["131858"] = true,
							["131849"] = true,
							["131812"] = true,
							["131819"] = true,
							["134041"] = true,
							["131586"] = true,
							["131587"] = true,
						},
					},
				},
				["Luckyone_TOS"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["134629"] = true,
							["134990"] = true,
							["139110"] = true,
							["134364"] = true,
							["134599"] = true,
							["139949"] = true,
						},
					},
				},
				["Luckyone_TD"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["135699"] = true,
							["127482"] = true,
							["130026"] = true,
							["127488"] = true,
						},
					},
				},
				["Luckyone_UR"] = {
					["actions"] = {
						["color"] = {
							["health"] = true,
							["healthColor"] = {
								["g"] = 0.59607843137255,
								["r"] = 0,
							},
						},
					},
					["triggers"] = {
						["names"] = {
							["134284"] = true,
							["130909"] = true,
							["131492"] = true,
							["138187"] = true,
							["133835"] = true,
						},
					},
				},
			},
		},
		["general"] = {
			["WorldMapCoordinates"] = {
				["position"] = "TOPLEFT",
			},
			["commandBarSetting"] = "DISABLED",
			["smallerWorldMapScale"] = 0.8,
			["UIScale"] = 0.7,
			["mapAlphaWhenMoving"] = 0.35,
		},
		["datatexts"] = {
			["customPanels"] = {
				["Luckyone_ActionBars_DT"] = {
					["enable"] = true,
					["textJustify"] = "CENTER",
					["border"] = true,
					["tooltipYOffset"] = 5,
					["numPoints"] = 3,
					["tooltipAnchor"] = "ANCHOR_TOP",
					["frameLevel"] = 1,
					["frameStrata"] = "LOW",
					["growth"] = "HORIZONTAL",
					["width"] = 358,
					["fonts"] = {
						["enable"] = true,
						["font"] = "Expressway",
						["fontSize"] = 12,
						["fontOutline"] = "NONE",
					},
					["mouseover"] = false,
					["name"] = "Luckyone_ActionBars_DT",
					["panelTransparency"] = true,
					["height"] = 13,
					["tooltipXOffset"] = 0,
					["visibility"] = "[petbattle] hide;show",
					["backdrop"] = true,
				},
			},
		},
		["sle"] = {
			["advanced"] = {
				["gameMenu"] = {
					["enable"] = false,
				},
				["general"] = true,
				["confirmed"] = true,
			},
		},
	},
	["gold"] = {
		["Draenor"] = {
			["Derptarogar"] = 159320660,
		},
	},
	["faction"] = {
		["Draenor"] = {
			["Derptarogar"] = "Horde",
		},
	},
	["serverID"] = {
		[1403] = {
			["Draenor"] = true,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Derptarogar - Draenor"] = "Derptarogar - Draenor",
	},
	["profiles"] = {
		["Derptarogar - Draenor"] = {
			["general"] = {
				["totemBar"] = false,
				["normTex"] = "Solid",
				["chatBubbleFont"] = "Expressway",
				["dmgfont"] = "Expressway",
				["chatBubbles"] = "disabled",
				["namefont"] = "Expressway",
				["glossTex"] = "Solid",
			},
			["L1UI"] = {
				["disabledFrames"] = {
					["BossBanner"] = true,
					["AlertFrame"] = true,
				},
			},
			["skins"] = {
				["parchmentRemoverEnable"] = true,
			},
			["sle"] = {
				["skins"] = {
					["petbattles"] = {
						["enable"] = false,
					},
					["objectiveTracker"] = {
						["BGbackdrop"] = false,
						["skinnedTextureLogo"] = "SLE",
						["underlineHeight"] = 2,
						["color"] = {
							["g"] = 0.41960784313725,
							["r"] = 0.25882352941176,
						},
						["texture"] = "Solid",
					},
				},
				["professions"] = {
					["deconButton"] = {
						["enable"] = false,
					},
				},
				["module"] = {
					["screensaver"] = true,
				},
			},
			["install_complete"] = "11.52",
		},
	},
}
