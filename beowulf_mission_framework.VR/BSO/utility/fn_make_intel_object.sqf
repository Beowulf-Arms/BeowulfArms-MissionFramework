// Add an "Collect Intel" interaction to an object. When the interaction is activated by a player, the object will be deleted, and a task and/or a briefing entry is created.
//
// parameters:
//   object: The object which the interaction is added to. (OBJECT)
//   task_id: Task id for the created task. "" to not create a task. (STRING)
//   task_headline: Title of the task. (STRING)
//   task_text: Text of the task. (STRING)
//   task_marker: Marker at which's position the task will be shown. "" to not have it set to a location. (STRING)
//   briefing_section: Title of the briefing entry. "" to not create a briefing entry. (STRING)
//   briefing_text: Content of the briefing entry. (STRING)
//
// example:
//   [this, "task4", "Destroy the thing", "You must destroy the thing, or else...", "thing_marker", "Intel", "You have found information about the thing: stuff"] call bso_fnc_make_intel_object;

params [
    ["_object", objNull, [objNull]],
    ["_task_id", "", [""]],
    ["_task_headline", "", [""]],
    ["_task_text", "", [""]],
    ["_task_marker", "", [""]],
    ["_briefing_section", "", [""]],
    ["_briefing_text", "", [""]],
    ["_public_var_name", "", [""]]
];

private _server_code = {
    _this params ["_object", "_task_id", "_task_headline", "_task_text", "_task_marker", "_briefing_section", "_briefing_text"];

    if (_task_id != "") then {
        if (_task_marker == "") then {
            [
                [_task_id, _task_text, _task_headline, _task_headline]
            ] call FHQ_fnc_ttAddTasks;
        } else {
            [
                [_task_id, _task_text, _task_headline, _task_headline, getMarkerPos _task_marker]
            ] call FHQ_fnc_ttAddTasks;
        };
    };

    if (_briefing_section != "") then {
        [
            [_briefing_section ,_briefing_text]
        ] call FHQ_fnc_ttAddBriefing;
    };
};

private _interaction_index = (_object getVariable ["bmf_interaction_index", 0]) + 1;
_object setVariable ["bmf_interaction_index", _interaction_index];
private _interaction_id = format ["bmf_interaction_%1", _interaction_index];

private _action = [_interaction_id, "Collect Intel", "", {
    (_this select 2) params ["_server_code", "_params"];
    private _object = _params select 0;
    deleteVehicle _object;
    [_params, _server_code] remoteExec ["call", 2];
}, {True}, {}, [_server_code, _this]] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
