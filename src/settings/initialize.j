function Settings__Initialize takes nothing returns boolean
	local integer index
	local player the_player

	set index = 0
	loop
		set the_player = Player (index)

		call SetPlayerName (the_player, String__Sanitize (GetPlayerName (the_player)))

		if GetPlayerSlotState (the_player) != PLAYER_SLOT_STATE_EMPTY then
			set udg_PlayerHERE [index + 1] = true
			call Gem_Rank__Register_Player (the_player)
		endif

		set index = index + 1
		exitwhen index == Gem__MAXIMUM_PLAYERS
	endloop

	call Settings___Pause_Miners ()
	call Game__On_Start (Condition (function Settings__Setup))

	return false
endfunction
