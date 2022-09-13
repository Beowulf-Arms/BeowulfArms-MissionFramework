/////bmf-v2_2////

// There should be no need to edit this file.

/////// ==== Save Disable
enableSaving [false,false];

////// === Mission Log
diag_log format ["###### %1 ######", missionName];
diag_log [diag_frameno, diag_ticktime, time, "Executing init.sqf"];

////// ====	Taskmaster
execVM "mission\briefing.sqf";

// ACRE
execVM "mission\acre.sqf";

// safety
[] call bso_fnc_safety;

// slows down time until gameon
[] call bso_fnc_timeSlow;

if (hasInterface) then {
    waitUntil {!isNull player};
};

// add's a "Teleport to Leader" action for JIPs
[] call bso_fnc_addJipTp;

// call player scripts
[] execVM "mission\custom_scripts.sqf";
