/////bmf-v2_2////

#define SAFETY_ZONES    [] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "DON'T BE A DICK"

if (!hasInterface) exitWith {};

[] spawn {
    waitUntil {!isNull player};

    ["ace_firedPlayer", {
        if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
        {
            deleteVehicle (_this select 6);
            titleText [MESSAGE, "PLAIN", 3];
        };
    }] call CBA_fnc_addEventHandler; // TODO: use XEH?
};
