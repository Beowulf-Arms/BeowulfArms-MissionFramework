/////bmf-v2_2////
Trigger_BSOStart = true; publicVariable "Trigger_BSOStart";
[] remoteExec ["bso_fnc_unsetSafety"];
[1] remoteExec ["setTimeMultiplier", 2];
Trigger_BSOGameOn = true; publicVariable "Trigger_BSOGameOn";
[{ Trigger_BSOGameOn = false; publicVariable "Trigger_BSOGameOn"; }, [], 10] call CBA_fnc_waitAndExecute;
