/////bmf-v1////
// Headgear Swap script
// 
// Swaps loadout assigned headgear with beret during pre-gameon step. Then adds headgear at GAMEON.
// Stops new connects + respawns having the "wrong" headgear.
//
//	Call:
//	[_berets, _excludes] call bso_fnc_headGearSwap
//
// Params:
//
//	_berets - Array - Used to define array of headgear to randomise as the "beret" for pre-brief headgear
//	_excludes - Array - Array of classnames of player units which will not have beret script applied to them
//
// Example:
//	[["H_Beret_02","H_Beret_Colonel"],["B_Pilot_F","B_Crew_F"]] call bso_fnc_headGearSwap;

params ["_berets","_excludes"];


if (!(typeOf player in _excludes) && !trigger_BSOstart)  then {			
	private _helmet = headgear player;
	private _beret = selectRandom _berets;
	removeHeadgear player;
	player addHeadgear _beret;

	[_helmet, _beret] spawn {
		params ["_helmet","_beret"];

		waitUntil {trigger_BSOstart};
		removeHeadgear player;
		player addHeadgear _helmet;
		player addItem _beret;
	};
};