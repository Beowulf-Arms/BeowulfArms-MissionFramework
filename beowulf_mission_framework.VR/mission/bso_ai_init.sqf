/////bmf-v2_2////

//	BSO AI Init Script v1
//
// Use this script to assign your own loadouts to AI units and apply any other changes to your AI. 
// By using this script you can avoid add init lines to every member of a group
// This script is also compatible with the JEBUS modules, so your respawned AI units will be spawned with the new loadouts
//
// Script checks the locality of the unit before running the script. Several examples of use provided
// - Apply BSO Loadout
// - Add BSO Paraflare 
// - AI Stripper
//
//
// Use the execVM line below on the group leader. 
// [this] execVM "mission\bso_ai_init.sqf";
//
// Use this line when using the JEBUS module, as _proxyThis refers to this
// [_proxyThis] execVM "mission\bso_ai_init.sqf";

_groupLeader = _this select 0;
if (local _groupLeader) then { // Runs where unit is local
	
	{
	
	// Loadouts - Each case defines a classname of the type of unit. This is how the script knows which loadout to apply to every unit. For example, apply he Autorifleman Loadout to the OpFor Autorifleman in the group.
	// You can add as many classes as you require
	/*
		_type = typeOf _x;
		_rifleman = selectRandom ["Rifleman","Rifleman2"];
		switch _type do 
		{
			case "O_Soldier_F": {[_x,"opfor",_rifleman,true] call BSO_fnc_applyLoadout;};
			case "O_Soldier_TL_F": {[_x,"opfor","Leader",true] call BSO_fnc_applyLoadout;};
			case "O_Soldier_LAT_F": {[_x,"opfor","RPG",true] call BSO_fnc_applyLoadout;};
			case "O_Soldier_AR_F": {[_x,"opfor","Autorifleman",true] call BSO_fnc_applyLoadout;};
			case "O_Soldier_M_F": {[_x,"opfor","Marksman",true] call BSO_fnc_applyLoadout;};
			case "O_Crew_F": {[_x,"opfor","Crew",true] call BSO_fnc_applyLoadout;};
			
			
			// this example below shows how we can add the bso AI Paraflare script to the SL units specificly
			case "O_Soldier_SL_F": {[_x,"opfor","Leader",true] call BSO_fnc_applyLoadout; [_x] execVM "mission\bso_AIParaflare.sqf";};
			
			
		};
	*/	
		
		
	// AI Stripper	 - Removes all magazines and medical supplies from the unit when its killed. Effectively stopping players from picking up AI equipment 
		_x addEventHandler ["Killed", {
			params ["_unit", "_killer", "_instigator", "_useEffects"];
			
			{_unit removeMagazine _x} forEach magazines _unit;
			_unit removeItems  "FirstAidKit";
			_unit removeItems  "ACE_fieldDressing";
			_unit removeItems  "ACE_morphine";
			_unit removeItems  "ACE_epinephrine";
			_unit removeItems  "ACE_splint";
			_unit removeItems  "ACE_tourniquet";
			}
		];		
		
		
	} forEach units group _groupLeader;
	
};
