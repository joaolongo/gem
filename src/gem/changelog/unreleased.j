function Gem_Changelog___Unreleased_Part_1 takes nothing returns nothing
	local string title = Gem_Changelog__Title ("Unreleased") + " - 1 of 3"
	local string date = "N/A"
	local string text = ""

	set text = text + Color__Gold ("Changed:") + "|n"
	set text = text + "- Swap:|n"
	set text = text + "    - No longer available on individual towers.|n"
	set text = text + "    - Is now an ability on the builder, and costs `10` mana.|n"
	set text = text + "    - The builder gains `1` mana for every level completed.|n"
	set text = text + "- Extra Chance:|n"
	set text = text + "    - Has been adjusted to be more rewarding at all bonuses.|n"
	set text = text + "    - Maximum bonus increased from `5x` to `10x`.|n"
	set text = text + "    - The bonus now increases when the current target is in the same class as the previous target. Classes are defined as Perfects and Slates.|n"
	set text = text + "    - If the bonus is `4x` or higher, hitting the target will now decrease it by `4x` (e.g. `4x` becomes `0x`). If the bonus is `3x` or lower, it will continue to be cleared.|n"
	set text = text + "|n"

	call Gem_Changelog__Setup (title, text, date)
endfunction

function Gem_Changelog___Unreleased_Part_2 takes nothing returns nothing
	local string title = Gem_Changelog__Title ("Unreleased") + " - 2 of 3"
	local string date = "N/A"
	local string text = ""

	set text = text + Color__Gold ("Changed: (cont.)") + "|n"
	set text = text + "- Elder Slate armor debuff no longer improves with levels, and now remains at the base value of `-7`.|n"
	set text = text + "- Spawn points have been shifted closer to the first checkpoints.|n"
	set text = text + "- Ancient Slate:|n"
	set text = text + "    - Armor reduction base value is now `-4`.|n"
	set text = text + "    - Each additional Ancient Slate adds `-4` to the armor reduction.|n"
	set text = text + "- Emeralds:|n"
	set text = text + "    - Poison damage can now kill units.|n"
	set text = text + "- Fire Star:|n"
	set text = text + "    - No longer deals physical damage.|n"
	set text = text + "    - Covers enemies in Fire, causing each target to burn like a Star Ruby. The marked target, and enemies within `256` range of it, will take `100` spell damage per second for the next `6.0` seconds.|n"
	set text = text + "|n"

	call Gem_Changelog__Setup (title, text, date)
endfunction

function Gem_Changelog___Unreleased_Part_3 takes nothing returns nothing
	local string title = Gem_Changelog__Title ("Unreleased") + " - 3 of 3"
	local string date = "N/A"
	local string text = ""

	set text = text + Color__Gold ("Fixed:") + "|n"
	set text = text + "- Air pathing is now more consistent across all players.|n"
	set text = text + "- Sources of AoE spell damage (i.e. Immolation) have been fixed:|n"
	set text = text + "    - Multiple sources will now stack.|n"
	set text = text + "    - Kill bonuses now apply to this type of damage, up to `100%` bonus.|n"
	set text = text + "- Viper Slate's AoE spell damage was double what was intended.|n"
	set text = text + "|n"

	set text = text + Color__Gold ("Removed:") + "|n"
	set text = text + "- Bonus gold that was awarded for reaching certain levels first has been removed.|n"
	set text = text + "|n"

	call Gem_Changelog__Setup (title, text, date)
endfunction

function Gem_Changelog___Unreleased takes nothing returns nothing
	call Gem_Changelog___Unreleased_Part_1 ()
	call Gem_Changelog___Unreleased_Part_2 ()
	call Gem_Changelog___Unreleased_Part_3 ()
endfunction
