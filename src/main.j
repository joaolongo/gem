function InitCustomTriggers takes nothing returns nothing
	call InitTrig_kills_and_remove_Corpse ()
	call InitTrig_Inihilization ()
	call InitTrig_Gem_Awards ()
	call InitTrig_Gem_Awards_Upgrade_debug ()
	call InitTrig_Player_Leaves ()
	call InitTrig_Creeps_attacking ()
	call InitTrig_Type_Air ()
	call InitTrig_Swap_Reworked ()
	call InitTrig_AntiStuck ()
	call InitTrig_Slate_move ()
	call InitTrig_Range_Check ()
	call InitTrig_Remove_rocks ()
	call InitTrig_Maxed_out_quality_Upgrade ()
	call InitTrig_Maxed_out_Extra_chance_upgrade ()
	call InitTrig_Buying_Lives ()
	call InitTrig_Find_spell_levels ()
	call InitTrig_Tourmaline ()
	call InitTrig_Tourmaline_Facet ()
	call InitTrig_Ancient_Bloodstone ()
	call InitTrig_Spell_Slate ()
	call InitTrig_Elder_Slate ()
	call InitTrig_Air_Slate ()
	call InitTrig_Slow_Slate ()
	call InitTrig_Opal_Vein_SLate ()
	call InitTrig_End_game_dmg_test_RACE_kills ()
	call InitTrig_P1_Dmg_test ()
	call InitTrig_P2_Dmg_test ()
	call InitTrig_P3_Dmg_test ()
	call InitTrig_P4_Dmg_test ()
	call InitTrig_P5_Dmg_test ()
	call InitTrig_P6_Dmg_test ()
	call InitTrig_P7_Dmg_test ()
	call InitTrig_P8_Dmg_test ()
	call InitTrig_Players_attacking ()
	call InitTrig_Miner_Leaves_area ()
	call InitTrig_Leak_and_lose_P1 ()
	call InitTrig_Movement1_1 ()
	call InitTrig_Movement1_2 ()
	call InitTrig_Movement1_3 ()
	call InitTrig_Movement1_4 ()
	call InitTrig_Movement1_5 ()
	call InitTrig_Movement1_6 ()
	call InitTrig_Movement1_7 ()
	call InitTrig_Leak_and_lose_P2 ()
	call InitTrig_Movement2_1 ()
	call InitTrig_Movement2_2 ()
	call InitTrig_Movement2_3 ()
	call InitTrig_Movement2_4 ()
	call InitTrig_Movement2_5 ()
	call InitTrig_Movement2_6 ()
	call InitTrig_Movement2_7 ()
	call InitTrig_Leak_and_lose_P3 ()
	call InitTrig_Movement3_1 ()
	call InitTrig_Movement3_2 ()
	call InitTrig_Movement3_3 ()
	call InitTrig_Movement3_4 ()
	call InitTrig_Movement3_5 ()
	call InitTrig_Movement3_6 ()
	call InitTrig_Movement3_7 ()
	call InitTrig_Leak_and_lose_P4 ()
	call InitTrig_Movement4_1 ()
	call InitTrig_Movement4_2 ()
	call InitTrig_Movement4_3 ()
	call InitTrig_Movement4_4 ()
	call InitTrig_Movement4_5 ()
	call InitTrig_Movement4_6 ()
	call InitTrig_Movement4_7 ()
	call InitTrig_Leak_and_lose_P5 ()
	call InitTrig_Movement5_1 ()
	call InitTrig_Movement5_2 ()
	call InitTrig_Movement5_3 ()
	call InitTrig_Movement5_4 ()
	call InitTrig_Movement5_5 ()
	call InitTrig_Movement5_6 ()
	call InitTrig_Movement5_7 ()
	call InitTrig_Leak_and_lose_P6 ()
	call InitTrig_Movement6_1 ()
	call InitTrig_Movement6_2 ()
	call InitTrig_Movement6_3 ()
	call InitTrig_Movement6_4 ()
	call InitTrig_Movement6_5 ()
	call InitTrig_Movement6_6 ()
	call InitTrig_Movement6_7 ()
	call InitTrig_Leak_and_lose_P7 ()
	call InitTrig_Movement7_1 ()
	call InitTrig_Movement7_2 ()
	call InitTrig_Movement7_3 ()
	call InitTrig_Movement7_4 ()
	call InitTrig_Movement7_5 ()
	call InitTrig_Movement7_6 ()
	call InitTrig_Movement7_7 ()
	call InitTrig_Leak_and_lose_P8 ()
	call InitTrig_Movement8_1 ()
	call InitTrig_Movement8_2 ()
	call InitTrig_Movement8_3 ()
	call InitTrig_Movement8_4 ()
	call InitTrig_Movement8_5 ()
	call InitTrig_Movement8_6 ()
	call InitTrig_Movement8_7 ()
	call InitTrig_Fin_P1_2 ()
	call InitTrig_Fin_P2_2 ()
	call InitTrig_Fin_P3_2 ()
	call InitTrig_Fin_P4_2 ()
	call InitTrig_Fin_P5_2 ()
	call InitTrig_Fin_P6_2 ()
	call InitTrig_Fin_P7_2 ()
	call InitTrig_Fin_P8_2 ()
	call InitTrig_Race_Mode_Kills ()
	call InitTrig_Finish_Build_Race_P1 ()
	call InitTrig_Finish_Build_Race_P2 ()
	call InitTrig_Finish_Build_Race_P3 ()
	call InitTrig_Finish_Build_Race_P4 ()
	call InitTrig_Finish_Build_Race_P5 ()
	call InitTrig_Finish_Build_Race_P6 ()
	call InitTrig_Finish_Build_Race_P7 ()
	call InitTrig_Finish_Build_Race_P8 ()
	call InitTrig_New_Level_P1 ()
	call InitTrig_New_Level_P2 ()
	call InitTrig_New_Level_P3 ()
	call InitTrig_New_Level_P4 ()
	call InitTrig_New_Level_P5 ()
	call InitTrig_New_Level_P6 ()
	call InitTrig_New_Level_P7 ()
	call InitTrig_New_Level_P8 ()
endfunction
function RunInitializationTriggers takes nothing returns nothing
	call ConditionalTriggerExecute (gg_trg_Inihilization)
endfunction
function main takes nothing returns nothing
	local trigger initialize

	// Set the names of computer players.  This was previously done in the
	// `war3map.w3i`, but was removed to ensure accurate games list counts.
	call SetPlayerName (Gem__PLAYER_CREEPS, "Monsters")
	call SetPlayerName (Player (9), "Gem not in play")

	// The two faster game speeds cannot be used at all in single-player or
	// multiplayer.  As such, we lock the speed to the default, to prevent
	// slower speeds from being used in multiplayer.
	call SetGameSpeed (MAP_SPEED_NORMAL)
	call SetMapFlag (MAP_LOCK_SPEED, true)

	call SetCameraBounds (-9472.0 + GetCameraMargin (CAMERA_MARGIN_LEFT), -9728.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 9472.0 -GetCameraMargin (CAMERA_MARGIN_RIGHT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -9472.0 + GetCameraMargin (CAMERA_MARGIN_LEFT), 9216.0 - GetCameraMargin (CAMERA_MARGIN_TOP), 9472.0 - GetCameraMargin (CAMERA_MARGIN_RIGHT), -9728.0 + GetCameraMargin (CAMERA_MARGIN_BOTTOM))
	call SetDayNightModels ("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	call NewSoundEnvironment ("Default")
	call SetAmbientDaySound ("SunkenRuinsDay")
	call SetAmbientNightSound ("SunkenRuinsNight")
	call SetMapMusic ("Music", true, 0)

	// This should be done before all systems initialized via triggers as
	// they may or may not rely on `blizzard.j` features.
	call InitBlizzard ()

	set initialize = CreateTrigger ()

	call TriggerAddCondition (initialize, Condition (function Node__Initialize))
	call TriggerAddCondition (initialize, Condition (function Run__Initialize))
	call TriggerAddCondition (initialize, Condition (function Game_Status__Initialize))
	call TriggerAddCondition (initialize, Condition (function Preload__Initialize))
	call TriggerAddCondition (initialize, Condition (function String__Initialize))
	call TriggerAddCondition (initialize, Condition (function Game__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Player__Initialize))
	call TriggerAddCondition (initialize, Condition (function Player_Color__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_Event__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_State__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_Indexer__Initialize))
	call TriggerAddCondition (initialize, Condition (function Dummy_Caster__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_Bonus_Armor__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_User_Data__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_Stun__Initialize))
	call TriggerAddCondition (initialize, Condition (function Unit_Disarm__Initialize))

	call TriggerAddCondition (initialize, Condition (function Gem_Information__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Changelog__Initialize))

	call TriggerEvaluate (initialize)
	call TriggerClearConditions (initialize)

	call InitSounds ()
	call CreateRegions ()
	call CreateAllUnits ()
	call InitGlobals ()
	call InitCustomTriggers ()
	call RunInitializationTriggers ()

	call TriggerAddCondition (initialize, Condition (function Cheats__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Mine__Initialize))

	// Must occur after all Gem 3.1 initializations (for now).
	call TriggerAddCondition (initialize, Condition (function Settings__Initialize))

	call TriggerAddCondition (initialize, Condition (function Commands__Initialize))
	call TriggerAddCondition (initialize, Condition (function Detect_Placed_Gem_Death__Initialize))

	call TriggerAddCondition (initialize, Condition (function Gem_Slate__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Special__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Spawn__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Rank__Initialize))

	call TriggerAddCondition (initialize, Condition (function Gem_Quality__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Type__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Gems__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Placement__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Chance__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Selection_Marker__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Selection_Slate_Marker__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Selection__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Extra_Chance__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Combination_Marker__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Combination__Initialize))
	call TriggerAddCondition (initialize, Condition (function Gem_Movement__Initialize))

	call TriggerEvaluate (initialize)
	call DestroyTrigger (initialize)
endfunction
