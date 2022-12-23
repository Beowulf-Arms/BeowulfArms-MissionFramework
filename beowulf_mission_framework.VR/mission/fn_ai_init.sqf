/////bmf-v1////

//	Beowulf AI Init Script v2
//
//	THIS FUNCTION AUTOMATICALLY APPLIES TO ALL AI UNITS. YOU DO NOT NEED TO DO ANYTHING MANUALLY!
//
// Use this script to assign your own loadouts to AI units and apply any other changes to your AI. 
// By using this script you can avoid add init lines to every member of a group
// This script is also compatible with the JEBUS modules, so your respawned AI units will be spawned with the new loadouts
//
// Script checks the locality of the unit before running the script. Several examples of use provided
// - Apply Beowulf Loadout
// - Add Beowulf Paraflare 
// - AI Stripper
//
// This function automatically runs on all units created in the editor or spawned. However, you can manually run it by using the commands below
//
//
// To manually call, use the execVM line below on the group leader. 
// [this] call bso_fnc_ai_init;
//
// Use this line when using the JEBUS module, as _proxyThis refers to this
// [_proxyThis] call bso_fnc_ai_init;

_unit = _this select 0;
if (local _unit && !isPlayer _unit) then { // Runs where unit is local
	
	// Skill (WIP)
	// Allows quick setting of AI Skills for all spawned AI units. Included are some examples that are worth changing. Others might have adverse affects. 
	// See https://community.bistudio.com/wiki/skillFinal for more info.
	// You can set the AI skill to any value between 0 and 1. However, suggested using the examples for reflection of Beowulf settings.
	// Mix and match these settings to adjust the AI's temperament. 
	// For example, having a low aimingAccuracy value, but a high courage, gives a "fanatical but poorly trained" force
	//
	// 0.6 - Elite tier
	// 0.4 - Professional Solider
	// 0.3 - Regular Soldier
	// 0.2 - Irregulars / Militia 
	// 0.1 - Civilian Milita 

	_unit setSkill ["general", 0.3]; // BI describes as "?". Raw "Skill", value is distributed to sub-skills unless defined otherwise. Affects the AI's decision making.
	_unit setSkill ["spotDistance", 0.3]; // Affects the AI ability to spot targets within it is visual or audible range
	_unit setSkill ["courage", 0.3]; // Affects unit's morale. Will more likely flee and/or take cover in reaction to fire
	_unit setSkill ["aimingAccuracy", 0.3]; // General Accuracy.  Covers leading a target, range estimation, dispersion and recoil compensation etc. 




	// Loadouts - Each case defines a classname of the type of unit. This is how the script knows which loadout to apply to every unit. For example, apply he Autorifleman Loadout to the OpFor Autorifleman in the group.
	// You can add as many classes as you require
/*
	_type = typeOf _unit;
	_rifleman = selectRandom ["Rifleman","Rifleman2"];
	switch _type do 
	{
		case "O_Soldier_F": {[_unit,"opfor",_rifleman,true] call BSO_fnc_applyLoadout;};
		case "O_Soldier_TL_F": {[_unit,"opfor","Leader",true] call BSO_fnc_applyLoadout;};
		case "O_Soldier_LAT_F": {[_unit,"opfor","RPG",true] call BSO_fnc_applyLoadout;};
		case "O_Soldier_AR_F": {[_unit,"opfor","Autorifleman",true] call BSO_fnc_applyLoadout;};
		case "O_Soldier_M_F": {[_unit,"opfor","Marksman",true] call BSO_fnc_applyLoadout;};
		case "O_Crew_F": {[_unit,"opfor","Crew",true] call BSO_fnc_applyLoadout;};
		
		// this example below shows how we can add the bso AI Paraflare script to the SL units specificly
		case "O_Soldier_SL_F": {[_unit,"opfor","Leader",true] call BSO_fnc_applyLoadout; [_unit] execVM "mission\bso_AIParaflare.sqf";};
		
	};
*/	
		
		
	// AI Stripper	 - Removes all magazines and medical supplies from the unit when its killed. Effectively stopping players from picking up AI equipment 
	_unit addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		
		//Below will give a 50/50 chance of removing each magazine. The commented out line below will remove all magazines
		{if (selectRandom [TRUE,FALSE]) then {_unit removeMagazine _x}} forEach magazines _unit;
		//{_unit removeMagazine _x} forEach magazines _unit;
		_unit removeItems  "FirstAidKit";
		_unit removeItems  "ACE_fieldDressing";
		_unit removeItems  "ACE_morphine";
		_unit removeItems  "ACE_epinephrine";
		_unit removeItems  "ACE_splint";
		_unit removeItems  "ACE_tourniquet";
		}
	];		
		
};
