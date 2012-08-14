-- Rogue

local BUFF = true
local DEBUFF = false
local p = Raven.ColorPalette

Raven.classSpells.ROGUE = {
	{ "Adrenaline Rush", BUFF, p.Orange1, cooldown = true, school = "Physical", id = 13750 },
	{ "Blade Flurry", BUFF, p.Orange3, cooldown = true, school = "Physical", id = 13877 },
	{ "Blind", DEBUFF, p.Gray, cooldown = true, school = "Physical", id = 2094 },
	{ "Burst of Speed", BUFF, p.Green3, school = "Physical", id = 108212 },
	{ "Cheap Shot", DEBUFF, p.Blue3, school = "Physical", id = 1833 },
	{ "Cheat Death", BUFF, p.Orange3, school = "Physical", id = 31230 },
	{ "Cloak of Shadows", BUFF, p.Purple1, cooldown = true, school = "Physical", id = 31224 },
	{ "Combat Readiness", BUFF, p.Orange3, cooldown = true, school = "Physical", id = 74001 }, -- Cataclysm level 81
	{ "Deadly Throw", DEBUFF, p.Purple1, school = "Physical", id = 26679 },
	{ "Deep Insight", BUFF, p.Orange3, school = "Physical", id = 84747 },
	{ "Detection", BUFF, p.Orange3, school = "Physical", id = 56814 },
	{ "Dismantle", DEBUFF, p.Yellow3, cooldown = true, school = "Physical", id = 51722 },
	{ "Distract", nil, p.Orange2, cooldown = true, school = "Physical", id = 1725 },
	{ "Envenom", BUFF, p.Green3, school = "Physical", id = 32645 },
	{ "Evasion", BUFF, p.Purple1, cooldown = true, school = "Physical", id = 5277 },
	{ "Eviscerate", nil, p.Red3, school = "Physical", id = 2098 },
	{ "Expose Armor", DEBUFF, p.Purple2, school = "Physical", id = 8647 },
	{ "Fan of Knives", nil, p.Purple1, school = "Physical", id = 51723 },
	{ "Feint", BUFF, p.Purple1, school = "Physical", id = 1966 },
	{ "Garrote", DEBUFF, p.Red2, school = "Physical", id = 703 },
	{ "Garrote - Silence", DEBUFF, p.Red2, school = "Physical", id = 1330 },
	{ "Gouge", DEBUFF, p.Red1, cooldown = true, school = "Physical", id = 1776 },
	{ "Hemorrhage", DEBUFF, p.Red3, school = "Physical", id = 16511 },
	{ "Kick", DEBUFF, p.Gray, cooldown = true, school = "Physical", id = 1766 },
	{ "Kidney Shot", DEBUFF, p.Yellow3, cooldown = true, school = "Physical", id = 408 },
	{ "Killing Spree", BUFF, p.Yellow3, cooldown = true, school = "Physical", id = 51690 },
	{ "Master Poisoner", DEBUFF, p.Green1, school = "Physical", id = 58410 },
	{ "Moderate Insight", BUFF, p.Orange3, school = "Physical", id = 84746 },
	{ "Nerve Strike", DEBUFF, p.Red2, school = "Physical", id = 108210 },
	{ "Premeditation", nil, p.Purple1, cooldown = true, school = "Physical", id = 14183 },
	{ "Preparation", nil, p.Purple1, cooldown = true, school = "Physical", id = 14185 },
	{ "Prey on the Weak", DEBUFF, p.Red1, school = "Physical", id = 131511 },
	{ "Recuperate", BUFF, p.Green2, school = "Physical", id = 73651 },
	{ "Redirect", nil, p.Orange2, cooldown = true, school = "Physical", id = 73981 }, -- Cataclysm level 83
	{ "Revealing Strike", DEBUFF, p.Brown3, school = "Physical", id = 84617 },
	{ "Rupture", DEBUFF, p.Red1, school = "Physical", id = 1943 },
	{ "Sap", DEBUFF, p.Orange3,  school = "Physical", id = 6770 },
	{ "Shadow Blades", BUFF, p.Blue3, cooldown = true, school = "Physical", id = 121471 },
	{ "Shadow Dance", BUFF, p.Blue3, cooldown = true, school = "Physical", id = 51713 },
	{ "Shadowstep", BUFF, p.Purple3, cooldown = true, school = "Physical", id = 36554 },
	{ "Shadow Walk", BUFF, p.Purple3, cooldown = true, school = "Physical", id = 114842},
	{ "Shallow Insight", BUFF, p.Orange3, school = "Physical", id = 84745 },
	{ "Shiv", nil, p.Green3, cooldown = true, school = "Physical", id = 5938 },
	{ "Shroud of Concealment", BUFF, p.Purple3, cooldown = true, school = "Physical", id = 114018 },
	{ "Sinister Strike", nil, p.Purple2, school = "Physical", id = 1752 },
	{ "Slice and Dice", BUFF, p.Orange3, school = "Physical", id = 5171 },
	{ "Smoke Bomb", DEBUFF, p.Gray, cooldown = true, school = "Physical", id = 76577 }, -- Cataclysm level 85
	{ "Sprint", BUFF, p.Orange1, cooldown = true, school = "Physical", id = 2983 },
	{ "Stealth", BUFF, p.Blue2, cooldown = true, school = "Physical", id = 1784 },
	{ "Subterfuge", BUFF, p.Orange3, school = "Physical", id = 108208 },
	{ "Swiftblade's Cunning", BUFF, p.Orange3, school = "Physical", id = 113742 },
	{ "Tricks of the Trade", BUFF, p.Red3, cooldown = true, school = "Physical", id = 57934 },
	{ "Vanish", BUFF, p.Gray, cooldown = true, school = "Physical", id = 1856 },
	{ "Vendetta", DEBUFF, p.Purple2, cooldown = true, school = "Physical", id = 79140 },
	-- Poisons --
	{ "Crippling Poison", DEBUFF, p.Brown3, id = 3408 },
	{ "Deadly Poison", DEBUFF, p.Green3, id = 2823 },
	{ "Leeching Poison", DEBUFF, p.Green2, id = 108211},
	{ "Mind-Numbing Poison", DEBUFF, p.Gray, id = 5761 },
	{ "Paralytic Poison", DEBUFF, p.Gray, id = 108215 },
	{ "Wound Poison", DEBUFF, p.Orange2, id = 8679 },
}

Raven.classConditions.ROGUE = {
	["Lethal Poison Missing"] = {
		name = "Lethal Poison Missing", enabled = true, notify = true,
		tests = {
			["Player Status"] = { enable = true, isResting = false, isMounted = false, isFishing = false },
			["Spell Ready"] = { enable = true, spell = 2823 }, -- "Deadly Poison"
			["Any Buffs"] = { enable = true, toggle = true, unit = "player", auras = { 2823, 8679 }, }, -- "Deadly Poison", "Wound Poison"
		},	
	},
	["Non-Lethal Poison Missing"] = {
		name = "Non-Lethal Poison Missing", enabled = true, notify = true,
		tests = {
			["Player Status"] = { enable = true, isResting = false, isMounted = false, isFishing = false },
			["Spell Ready"] = { enable = true, spell = 3408 }, -- "Crippling Poison"
			["Any Buffs"] = { enable = true, toggle = true, unit = "player",
				auras = { 3408, 5761, 108215, 108211 }, }, -- "Crippling Poison", "Mind-numbing Poison", "Paralytic Poison", "Leeching Poison"
		},	
	},
}
