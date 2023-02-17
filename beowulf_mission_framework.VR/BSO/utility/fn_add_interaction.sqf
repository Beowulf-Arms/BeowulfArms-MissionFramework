// Adds an ACE interaction to an object, which will set a public variable when activated. That variable can then used by triggers etc.
// The variable will initially be set to false.
//
// parameters:
//   object: The object which the interaction is added to. (OBJECT)
//   interaction name: Name of the interaction in the interaction menu. (STRING)
//   remove: If the object should be deleted once the interaction was used. (BOOL)
//   varname: Name of a public variable which will be set to true when the object is picked up. (STRING)
//
// example:
//   [this, "Download data", false, "bso_obj1"] call bso_fnc_add_interaction;


params [
    ["_object", objNull, [objNull]],
    ["_text", "", [""]],
    ["_remove", false, [false]],
    ["_var_name", "", [""]]
];

if (isServer) then {
    missionNamespace setVariable [_var_name, false, true];
};

private _interaction_index = (_object getVariable ["bmf_interaction_index", 0]) + 1;
_object setVariable ["bmf_interaction_index", _interaction_index];
private _interaction_id = format ["bmf_interaction_%1", _interaction_index];

private _action = [_interaction_id, _text, "", {
    params ["_target", "_player", "_params"];
    _params params ["_remove", "_var_name"];
    if (_remove) then {
        deleteVehicle _target;
    };
    missionNamespace setVariable [_var_name, true, true];
}, {
    private _var_name = (_this select 2) select 1;
    !(missionNamespace getVariable [_var_name, false])
}, {}, [_remove, _var_name]] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
