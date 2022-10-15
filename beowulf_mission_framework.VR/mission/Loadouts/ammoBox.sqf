// [this] execVM "mission\ammoBox.sqf"; // put this in the init of the box

 private["_box"];
 _box = _this select 0;
if (isServer) then {

	clearMagazineCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearItemCargoGlobal _box;
	// Increase the size of a box
	//_box setMaxLoad 10000; 
	
	[_box, true, [0,1,0], 0] call ace_dragging_fnc_setCarryable; 
	[_box, true, [0,1,0], 0] call ace_dragging_fnc_setDraggable; 

	_box addMagazineCargoGlobal  ["30Rnd_556x45_Stanag", 40];
	_box addMagazineCargoGlobal  ["30Rnd_556x45_Stanag_Tracer_Red", 20];

	_box addMagazineCargoGlobal  ["150Rnd_762x54_Box", 6];
	_box addMagazineCargoGlobal  ["130Rnd_338_Mag", 4];
	
	_box addMagazineCargoGlobal  ["20Rnd_762x51_Mag", 4];
	_box addMagazineCargoGlobal  ["ACE_20Rnd_762x51_Mag_Tracer", 4];
	
	_box addMagazineCargoGlobal  ["16Rnd_9x21_Mag", 4];
	
	_box addMagazineCargoGlobal  ["30Rnd_9x21_Mag_SMG_02", 4];

	_box addMagazineCargoGlobal  ["HandGrenade", 16];
	_box addMagazineCargoGlobal  ["SmokeShell", 8];
	_box addMagazineCargoGlobal  ["SmokeShellRed", 1];
	_box addMagazineCargoGlobal  ["SmokeShellGreen", 1];
	_box addMagazineCargoGlobal  ["SmokeShellBlue", 1];
	_box addMagazineCargoGlobal  ["SmokeShellPurple", 1];

	_box addMagazineCargoGlobal  ["DemoCharge_Remote_Mag", 2];
	_box addMagazineCargoGlobal  ["ATMine_Range_Mag", 2];
	
	_box addWeaponCargoGlobal  ["launch_NLAW_F", 2];
	
	_box addMagazineCargoGlobal  ["rhs_mag_maaws_HEAT", 2];
	_box addMagazineCargoGlobal  ["rhs_mag_maaws_HE", 2];
	
	_box addMagazineCargoGlobal  ["Titan_AT", 2];
	
	_box addMagazineCargoGlobal  ["Titan_AA", 2];

	_box addMagazineCargoGlobal  ["1Rnd_HE_Grenade_shell", 6];
	_box addMagazineCargoGlobal  ["1Rnd_Smoke_Grenade_shell", 4];
	_box addMagazineCargoGlobal  ["1Rnd_SmokeRed_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_SmokeGreen_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_SmokePurple_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_SmokeBlue_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["UGL_FlareRed_F", 4];
	_box addMagazineCargoGlobal  ["UGL_FlareGreen_F", 4];

	_box addItemCargoGlobal  ["ACE_SpareBarrel", 2];

	_box addItemCargoGlobal  ["ACE_salineIV_500", 10];
	_box addItemCargoGlobal  ["ACE_tourniquet", 10];
	_box addItemCargoGlobal  ["ACE_morphine", 10];
	_box addItemCargoGlobal  ["ACE_epinephrine", 5];
	_box addItemCargoGlobal  ["ACE_elasticBandage", 20];
	_box addItemCargoGlobal  ["ACE_packingBandage", 20];

};



