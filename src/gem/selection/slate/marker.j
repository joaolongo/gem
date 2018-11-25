globals
	constant integer Gem_Selection_Slate_Marker___EFFECT = ID ()
	constant integer Gem_Selection_Slate_Marker___UNIT = ID ()

	constant string Gem_Selection_Slate_Marker___SFX = "Abilities\\Spells\\Other\\Silence\\SilenceAreaBirth.mdl"

	constant real Gem_Selection_Slate_Marker___DELAY = 0.0
	constant real Gem_Selection_Slate_Marker___PERIOD = 0.9

	timer array Gem_Selection_Slate_Marker___Timer
endglobals

function Gem_Selection_Slate_Marker___Effect takes nothing returns nothing
	local timer clock = GetExpiredTimer ()
	local integer clock_id = GetHandleId (clock)
	local unit which = LoadUnitHandle (Table, clock_id, Gem_Selection_Slate_Marker___UNIT)
	local effect sfx = LoadEffectHandle (Table, clock_id, Gem_Selection_Slate_Marker___EFFECT)

	call DestroyEffect (sfx)
	set sfx = AddSpecialEffect (Gem_Selection_Slate_Marker___SFX, GetUnitX (which), GetUnitY (which))
	call SaveEffectHandle (Table, clock_id, Gem_Selection_Slate_Marker___EFFECT, sfx)
	call TimerStart (clock, Gem_Selection_Slate_Marker___PERIOD, false, function Gem_Selection_Slate_Marker___Effect)

	set clock = null
	set which = null
	set sfx = null
endfunction

function Gem_Selection_Slate_Marker__Attach takes unit which returns nothing
	local integer which_index = Unit_Indexer__Unit_Index (which)
	local timer clock = null
	local integer clock_id = 0

	if Gem_Selection_Slate_Marker___Timer [which_index] != null then
		return
	endif

	set clock = CreateTimer ()
	set Gem_Selection_Slate_Marker___Timer [which_index] = clock
	set clock_id = GetHandleId (clock)

	call SaveUnitHandle (Table, clock_id, Gem_Selection_Slate_Marker___UNIT, which)
	call TimerStart (clock, Gem_Selection_Slate_Marker___DELAY, false, function Gem_Selection_Slate_Marker___Effect)

	set clock = null
endfunction

function Gem_Selection_Slate_Marker__Detach takes unit which returns nothing
	local integer which_index = Unit_Indexer__Unit_Index (which)
	local timer clock = Gem_Selection_Slate_Marker___Timer [which_index]
	local integer clock_id = 0

	if clock == null then
		return
	endif

	set Gem_Selection_Slate_Marker___Timer [which_index] = null
	set clock_id = GetHandleId (clock)

	call DestroyEffect (LoadEffectHandle (Table, clock_id, Gem_Selection_Slate_Marker___EFFECT))
	call FlushChildHashtable (Table, clock_id)

	call PauseTimer (clock)
	call DestroyTimer (clock)

	set clock = null
endfunction

function Gem_Selection_Slate_Marker___On_Leave takes nothing returns boolean
	call Gem_Selection_Slate_Marker__Detach (Unit_Event__The_Unit ())

	return false
endfunction

function Gem_Selection_Slate_Marker___On_Death takes nothing returns boolean
	call Gem_Selection_Slate_Marker__Detach (Unit_Event__The_Unit ())

	return false
endfunction

function Gem_Selection_Slate_Marker__Initialize takes nothing returns boolean
	call Unit_Event__On_Leave (Condition (function Gem_Selection_Slate_Marker___On_Leave))
	call Unit_Event__On_Death (Condition (function Gem_Selection_Slate_Marker___On_Death))

	return false
endfunction
