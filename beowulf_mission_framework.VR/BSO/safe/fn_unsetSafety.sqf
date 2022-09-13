/////bmf-v2_2////

if (!hasInterface) exitwith {};
player allowDamage true;
["ace_firedPlayer", bso_safestart_firedEH] call CBA_fnc_removeEventHandler;
[bso_safestart_notificationPfh] call CBA_fnc_removePerFrameHandler;
["BSOSafeStart",["GAME ON!"]] call BIS_fnc_showNotification;
