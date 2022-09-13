/////bmf-v2_2////

// Here you can find the mission briefing, ACRE Languages, admin end conditions and allow for marker visibility to only certain factions.
// You will have to set your debriefing information in the Meta.cpp file because ArmA.
// See the BSO Mission Makers Wiki for the downloadable PDF on the FHQ briefing and task system for full instructions
//
// The system uses filters for setting who has been set a task or briefing.
// Included are the filters for sides in the Add Tasks section. These are the same filters which can be used in the AddBriefings section in the same way.
//
//   Task Entries
//		_taskID - REQUIRED. I.D. of the task used for scripting.
//		_description - REQUIRED. Full description of the task.
//		_title - REQUIRED. Title of task seen in the task list.
//		_shorttitle - REQUIRED?. Title seen on map if linked to markers, or 3d view.
//		_target - marker or object defined location of the task
//		_initial - Task status. For example "assigned", "created", "succeeded", "failed", "canceled"
//		_type - Type of task which dictates the icons used on the map and task list.
//
//
//	The following line is used to mark an objective as successful. Note how only the server calls the task change. More info can be found in the FHQ Guide.
//       if (isServer) then {["task1", "succeeded"] call FHQ_fnc_ttSetTaskState;};
//
// "<br/>" can be used to start new lines and create paragraphs


[
  {true}, //All factions/units will be able to see the tasks following this filter. This line will also use the "Obj1" marker and create an attack mark linked to the task.
	["Task1", "Locate and destroy the enemy truck", "1. Destroy the Truck", "Destroy", getMarkerPos "obj1", "assigned", "attack"],

   west, // Only BluFor will be able to see these tasks.
	["Task2w","Full BluFor Objective description and information","2. Blufor Objective Name","BluFor Obj."],

   east, // Only OpFor will be able to see these tasks.
	["Task2e","Full OpFor Objective description and information","2. OpFor Objective Name","OpFor Obj."],

   resistance, // Only IndFor will be able to see these tasks.
	["Task2r","Full IndFor Objective description and information","2. IndFor Objective Name","IndFor Obj."]

] call FHQ_fnc_ttAddTasks;

// Much like tasks, you can use filters for factions, group names and specific units
//
// "<br/>" can be used to start new lines and create paragraphs
//
// Below are the default entries that are expected in standard Beowulf Missions. Edit them or create new ones, but ensure you get all of the important information accross.


[
	{true},
  ["Situation","A brief description of the current situation to cause this mission. This is where you place any fluff."],
  ["Mission","
	1. Objective one.
    <br/>
	<br/>
	2. Objective two.
	<br/>
	<br/>
	Full description of the mission at hand, including explanations of objectives, what you want to achieve, and what is classed as a failure.
	<br/>
	Keep this as short and to the point as possible.
  "],
  ["Intel","Provide any general mission intel such as weather conditions and info about the AO or intelligence about the objectives"],
  ["Environment","
  Time of Day - 0000hrs
  <br/>
  Weather - Clear
  <br/>
  Visibility - Bright
  <br/>
  Forecast - Small chance of cloud
  <br/>
  <br/>
  Although not required, the above information is important if the mission has any adverse conditions. Such as rain, darkness, fog or high winds.
  "],
  ["Execution","Description how you expect the mission should be executed, this can be just assigning a leader, or describing exactly how the players should execute the mission stage by stage."],
  ["OpFor","Description of the opposing forces in the area. Include information such as composition, disposition and strength"],
  ["BluFor","Information on friendly forces in the area, including what your players are portraying."],
  ["Support","Include any information about support elements."],
  ["Assets","Include information about equipment and vehicles thats been provided for use by the players."],
  ["ROE","Include the side's doctrine (Regular/Irregular) and any engagement rules if required. Include if the force has BluForce Tracker."],
  ["COMSIG","Operations comms and signal are follows
					<br/>
					<br/>
				1st Squad - CH1 SR
					<br/>
				2nd Squad - CH2 SR
					<br/>
				3rd Squad - CH3 SR
					<br/>
				MMG Team - CH4 SR
					<br/>
				COMMAND - CH5 SR
					<br/>
					<br/>
				Company net - CH1 LR
					<br/>
				Air Net - CH2 LR
				"],
  ["Notes","Additional notes about the mission and any tips you want to give the players should go here."],
  ["Credits","AUTHOR"]

] call FHQ_fnc_ttAddBriefing;

/*
 * Language definitions have been moved to mission\acre.sqf
 */


// Mission end conditions. By editing the "end" and "loser" configs in meta.cpp you can have the admin end the mission with a debrief.
["Mission Success", "end1", true] call bso_admin_fnc_addMissionEnd;
["Mission Failed", "loser", false] call bso_admin_fnc_addMissionEnd;

//Below is an example on how you can make only certain factions see certain markers.
/*
if (!isDedicated) then
{
	{_x setMarkerAlphaLocal 0} forEach ["obj1","obj2","obj3","objA"]; // Define all markers to have selective visibility here.
	waitUntil {!isNull player};
	switch (side player) do
	{
		case west:
		{
			{_x setMarkerAlphaLocal 1} forEach ["objA"]; // Define the markers this faction will be able to see but others cannot.
		};
		case east:
		{
			{_x setMarkerAlphaLocal 1} forEach ["obj1","obj2","obj3"];
		};
        case resistance:
		{
			{_x setMarkerAlphaLocal 1} forEach [];
		};
		case civilian:
		{
			{_x setMarkerAlphaLocal 1} forEach [];
		};
	};
};
*/
