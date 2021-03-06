// # Gem Slate: Poison

function Gem_Slate___Poison takes nothing returns boolean
	local unit attacker
	local unit victim
	local integer level
	local boolean is_poisoned

	set attacker = GetAttacker ()

	if GetUnitTypeId (attacker) == 'n008' then
		set is_poisoned = false

		if GetUnitState (attacker, UNIT_STATE_MANA) >= 5.0 then
			set victim = GetTriggerUnit ()
			set level = IMinBJ (Unit_User_Data__Get (attacker) / 10 + 1, 11)

			call UnitAddAbility (attacker, 'A05N')
			call SetUnitAbilityLevel (attacker, 'A05N', level)
			set is_poisoned = IssueTargetOrder (attacker, ORDER_SHADOWSTRIKE, victim)
			call UnitRemoveAbility (attacker, 'A05N')
		endif

		if is_poisoned then
			call DestroyEffect (AddSpecialEffect ("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX (attacker), GetUnitY (attacker)))
		else
			call IssueImmediateOrder (attacker, "stop")
		endif
	endif

	return false
endfunction

function Gem_Slate___Initialize_Poison takes nothing returns nothing
	local trigger the_trigger
	local integer index

	set the_trigger = CreateTrigger ()

	set index = 11
	loop
		call TriggerRegisterPlayerUnitEvent (the_trigger, Player (index), EVENT_PLAYER_UNIT_ATTACKED, null)
		set index = index + 1
		exitwhen index > 18
	endloop

	call TriggerAddCondition (the_trigger, Condition (function Gem_Slate___Poison))
endfunction

function Gem_Slate_Poison__Initialize takes nothing returns nothing
	call Preload__Ability ('A05N') // Shadow Strike
endfunction
