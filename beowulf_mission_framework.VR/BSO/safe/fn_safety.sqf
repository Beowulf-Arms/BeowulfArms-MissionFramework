/////bmf-v2_2////

if (isNil "Trigger_BSOStart") then { Trigger_BSOStart = false; };

if (isServer) then {
	Trigger_BSOGameOn = false; publicVariable "Trigger_BSOGameOn";
};

if (Trigger_BSOStart) exitWith {};

if (!hasInterface) exitWith {};

[{!isNull player}, {
	if (currentWeapon player != "") then {
		[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
	};
}] call CBA_fnc_waitUntilAndExecute;

bso_safestart_notificationPfh = [{
    ["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
}, 30] call CBA_fnc_addPerFrameHandler;

bso_safestart_firedEH = ["ace_firedPlayer", {deleteVehicle (_this select 6);}] call CBA_fnc_addEventHandler;
player allowDamage false;
["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;

// TODO: not really needed anymore, but might as well keep around. make it easy to configure.
// [] call bso_fnc_safeZone;

["Start Mission", {[] call bso_fnc_gameOn}, {!Trigger_BSOStart}] call bso_admin_fnc_addAdminAction;
