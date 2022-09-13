/*
////BL_TEMP_West v1.0////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
https://beowulfso.com/wiki/BSO_Loadouts
BSO Loadout Template - Standard Western Force

This template allows for quick creation of loadouts for your mission.
Combined with the ORBAT template, you can quickly put together a standard platoon with weapon teams.

Use "find and replace" on each of the  BL variables to replace that item in the loadouts.
Constructive use of "find and replace" will allow you to add several uniforms to arrays and other wizardry.

You are still able to quickly make changes, alterations and new classes to your faction.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////



 arifle_TRG21_F								- Standard Rifle for most loadouts
 acc_pointer_IR 							- Rail equipment. Usually IR Laser or torch
 optic_Hamr 								- Standard Optic
 30Rnd_556x45_Stanag 						- Standard Rifle magazine
 30Rnd_556x45_Stanag_Tracer_Red				- Standard Rifle Tracer magazine

 hgun_P07_F									- Standard Sidearm
 16Rnd_9x21_Mag								- Standard Sidearm Magazine

 LMG_Zafir_F								- Automatic Rifle
 150Rnd_762x54_Box							- Automatic Rifle Magazine

 arifle_TRG21_GL_F							- Standard Rifle with Underbarrel Grenade Launcher
 1Rnd_HE_Grenade_shell						- UGL HE grenade
 1Rnd_Smoke_Grenade_shell					- UGL Smoke Greande. First Colour
 1Rnd_SmokeRed_Grenade_shell				- UGL Smoke Grenade. Second Colour
 1Rnd_SmokeGreen_Grenade_shell				- UGL Smoke Grenade. Third Colour
 UGL_FlareRed_F								- UGL Flare Grenade. First Colour
 UGL_FlareGreen_F							- UGL Flare Grenade. Second Colour

 srifle_EBR_F								- Marksman Rifle
 20Rnd_762x51_Mag							- Marksman Rifle magazine
 ACE_20Rnd_762x51_Mag_Tracer				- Marksman Rifle Tracer magazine
 optic_SOS									- Marksman Rifle Optic
 bipod_01_F_blk								- Marksman Rifle Bipod

 MMG_02_sand_F								- Machinegun
 130Rnd_338_Mag								- Machinegun Magazine

 launch_NLAW_F								- Light AntiTank Launcher
 rhs_weap_maaws								- Medium AntiTank Launcher
 rhs_optic_maaws							- MAT Optic
 rhs_mag_maaws_HEAT							- MAT ammo - AT
 rhs_mag_maaws_HE							- MAT ammo - HE
 launch_B_Titan_short_F						- Heavy AntiTank Launcher
 Titan_AT									- HAT ammo
 launch_B_Titan_F							- Surface-to-Air Missile Launcher
 Titan_AA									- SAM ammo

 SMG_02_F									- Crew/Pilot Weapon
 30Rnd_9x21_Mag_SMG_02						- Crew/Pilot Magazine

 HandGrenade								- Handgrenade Fragmentation.
 SmokeShell									- Handgrenade Smoke. Standard Smoke
 SmokeShellRed								- Handgrenade Smoke. First Colour
 SmokeShellGreen							- Handgrenade Smoke. Second Colour
 SmokeShellBlue								- Handgrenade Smoke. Third Colour
 SmokeShellPurple							- Handgrenade Smoke. Forth Colour



 U_B_CTRG_1									- Uniform
 V_PlateCarrierL_CTRG						- Vest
 H_HelmetSpecB								- Headgear

 U_B_HeliPilotCoveralls						- Pilot Uniform
 V_TacVest_blk								- Pilot Vest/Gear
 H_PilotHelmetHeli_B						- Pilot Headgear

 U_B_CTRG_2									- Vehicle Crew Uniform
 V_TacVest_blk								- Vehicle Crew Vest/Gear
 H_HelmetCrew_B								- Vehicle Crew Headgear

 ACE_Flashlight_XL50						- Handheld Map Torch
 NVGoggles									- Night Vision Goggles
 Binocular									- Binoculars
 ATMine_Range_Mag							- AntiTank Mine

 ACRE_PRC343								- Personal Radio
 ACRE_PRC148								- Long Range Radio
 ACRE_PRC117F								- Backpack Radio

 B_AssaultPack_rgr							- Backpack Small
 B_Kitbag_rgr								- Backpack Standard
 B_Carryall_oli								- Backpack AT
 B_Carryall_oli								- Backpack Large
 B_Carryall_oli								- Backpack Radio


*/
class blufor //Name of your faction referenced in the init call
 {
		name = "Beowulf Loadout Faction"; //Human name of your faction
		
		
		class Base // Class Names
		{
			name = "Base";

			items[] = {
				"ACE_salineIV_500",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			glasses[] = {};
			nvg = "NVGoggles";
			insignia = "";
		};		
		
		class Rifleman: Base // Class Names
		{
			name = "Rifleman";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"30Rnd_556x45_Stanag","acc_pointer_IR","optic_Hamr"};
			magazines[] = {
				{"30Rnd_556x45_Stanag",5},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"HandGrenade",2},
				"SmokeShell"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				{"30Rnd_556x45_Stanag",4},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"HandGrenade",2},
				"SmokeShell"
			};
			backpackItems[] = {
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
			};
		};
		
		class RiflemanLAT: Rifleman
		{
			name = "Rifleman (LAT)";
			launcher = "launch_NLAW_F";
		};
		
		class SquadLeader: Rifleman {
			name = "Squad Leader";
			primaryWeapon = "arifle_TRG21_GL_F";
			primaryWeaponItems[] = {"30Rnd_556x45_Stanag","1Rnd_HE_Grenade_shell","acc_pointer_IR","optic_Hamr"};
			handgun = "hgun_P07_F";
			handgunItems[] = {"16Rnd_9x21_Mag"};
			magazines[] = {
				{"30Rnd_556x45_Stanag",5},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"1Rnd_HE_Grenade_shell",2},
				"1Rnd_Smoke_Grenade_shell",
				{"16Rnd_9x21_Mag",2},
				{"HandGrenade",2},
				"SmokeShell"
			};
			items[] += {"ACE_MapTools"};
			personalRadios[] += {"ACRE_PRC148"};
			assignedItems[] += {"ItemGPS"};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				{"30Rnd_556x45_Stanag",4},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"1Rnd_HE_Grenade_shell",3},
				{"1Rnd_Smoke_Grenade_shell",4},
				{"1Rnd_SmokeRed_Grenade_shell",3},
				{"1Rnd_SmokeGreen_Grenade_shell",2},
				{"16Rnd_9x21_Mag",2},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"SmokeShellBlue",2},
				{"SmokeShellGreen",2},
				{"SmokeShellPurple",2},
				{"UGL_FlareRed_F",2}
			};
			backpackItems[] = {
				{"ACE_fieldDressing",4},
				{"ACE_morphine",2},
				{"ACE_tourniquet",2},
				{"ACE_epinephrine",2},
				{"ACE_quikclot",2}
			};
			binoculars = "Binocular";
		};
		

		class PlatoonLeader: Squadleader
		{
			name = "Platoon Leader";
			backpackItems[] = {
				"ACRE_PRC117F",
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
			};
			binoculars = "Binocular";
		};
		
		class TeamLeader: Rifleman
		{
			name = "TeamLeader";
			handgun = "hgun_P07_F";
			handgunItems[] = {"16Rnd_9x21_Mag"};
			magazines[] = {
				{"30Rnd_556x45_Stanag",5},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"HandGrenade",2},
				"SmokeShell",
				{"16Rnd_9x21_Mag",4}
			};
			items[] += {"ACE_MapTools"};
			personalRadios[] = {"ACRE_PRC148"};
			assignedItems[] += {"ItemGPS"};
			backpack = "B_AssaultPack_rgr";
			backpackItems[] = {
				{"ACE_fieldDressing",6},
				{"ACE_morphine",3},
				{"ACE_tourniquet",3},
				{"ACE_epinephrine",2},
				{"ACE_quikclot",3}
			};
			binoculars = "Binocular";
		};
		class Autorifleman: Rifleman 
		{
			name = "Autorifleman";
			primaryWeapon = "LMG_Zafir_F";
			primaryWeaponItems[] = {"150Rnd_762x54_Box","acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				{"150Rnd_762x54_Box",3},
				{"HandGrenade",2},
				"SmokeShell",
				"150Rnd_762x54_Box"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"150Rnd_762x54_Box",4}
			};
			backpackItems[] = {
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
				"ACE_SpareBarrel"
			};
		};
		class AutoAsst: Rifleman
		{
			name = "AR Asst.";
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"150Rnd_762x54_Box",4}
			};
			backpackItems[] = {
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
				"ACE_SpareBarrel"
			};
			binoculars = "Binocular";
		};

		class Grenadier: Rifleman
		{
			name = "Grenadier";
			primaryWeapon = "arifle_TRG21_GL_F";
			primaryWeaponItems[] = {"30Rnd_556x45_Stanag","acc_pointer_IR","optic_Hamr"};
			magazines[] = {
				{"30Rnd_556x45_Stanag",5},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"1Rnd_HE_Grenade_shell",3},
				{"1Rnd_Smoke_Grenade_shell",1},
				{"1Rnd_SmokeRed_Grenade_shell",1},
				{"1Rnd_SmokeGreen_Grenade_shell",1},
				{"HandGrenade",2},
				{"SmokeShell",1},
				{"UGL_FlareRed_F",1}
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				{"30Rnd_556x45_Stanag",4},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"1Rnd_HE_Grenade_shell",8},
				{"1Rnd_Smoke_Grenade_shell",4},
				{"1Rnd_SmokeRed_Grenade_shell",2},
				{"1Rnd_SmokeGreen_Grenade_shell",2},
				{"HandGrenade",2},
				{"SmokeShell",1},
				{"UGL_FlareRed_F",2}
			};
			backpackItems[] = {
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
			};
		};
		
		class TeamLeaderMG: TeamLeader
		{
			name = "TeamLeader - MG";
			personalRadios[] += {"ACRE_PRC148"};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"SmokeShell",3},
				{"SmokeShellGreen",1},
				{"SmokeShellPurple",1},
				{"130Rnd_338_Mag",3}
			};
		};

		class Machinegunner: Rifleman
		{
			name = "Machinegunner";
			primaryWeapon = "MMG_02_sand_F";
			primaryWeaponItems[] = {"130Rnd_338_Mag","acc_pointer_IR"};
			handgun = "hgun_P07_F";
			handgunItems[] = {"16Rnd_9x21_Mag"};
			magazines[] = {
				{"130Rnd_338_Mag",2},
				{"16Rnd_9x21_Mag",3},
				{"HandGrenade",2},
				"SmokeShell"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"130Rnd_338_Mag",3}
			};
			backpackItems[] = {
				{"ACE_fieldDressing",3},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
				"ACE_SpareBarrel"
			};
		};

		class MachinegunAsst: Rifleman
		{
			name = "MG Asst.";
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"130Rnd_338_Mag",3}
			};
			backpackItems[] = {
				{"ACE_fieldDressing",3},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
				"ACE_SpareBarrel"
			};
			binoculars = "Binocular";
		};
		
		class TeamLeaderMAT: TeamLeader
		{
			name = "TeamLeader - MAT";
			personalRadios[] += {"ACRE_PRC148"};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"SmokeShell",3},
				{"SmokeShellGreen",1},
				{"SmokeShellPurple",1},
				{"rhs_mag_maaws_HEAT",1},
				{"rhs_mag_maaws_HE",1}
			};
		};

		class MediumAT: Rifleman
		{
			name = "MAT Gunner";
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"rhs_mag_maaws_HEAT",2},
				{"rhs_mag_maaws_HE",1}
			};
			launcher = "rhs_weap_maaws";
			launcherItems[] = {"rhs_mag_maaws_HEAT","rhs_optic_maaws"};
		};
		
		class MediumATAsst: Rifleman
		{
			name = "MAT Asst.";
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"rhs_mag_maaws_HEAT",2},
				{"rhs_mag_maaws_HE",1}
			};
			binoculars = "Binocular";
		};

		class HeavyAT: Rifleman
		{
			name = "HAT Gunner";
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"Titan_AT",3}
			};
			launcher = "launch_B_Titan_short_F";
			launcherItems[] = {"Titan_AT"};
		};
		
		class HeavyATAsst: Rifleman
		{
			name = "HAT Asst.";
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"Titan_AT",3}
			};
			binoculars = "Binocular";
		};
		
		class AntiAir: Rifleman
		{
			name = "AA Gunner";
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"Titan_AA",2}
			};
			launcher = "launch_B_Titan_F";
			launcherItems[] = {"Titan_AA"};
		};
		class AntiAirAsst: Rifleman
		{
			name = "AA Asst.";
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"Titan_AA",2}
				};
			binoculars = "Binocular";
		};
		
		class ExpExpert: Rifleman
		{
			name = "Exp. Expert";
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"DemoCharge_Remote_Mag",2},
				"SatchelCharge_Remote_Mag",
				"ATMine_Range_Mag",
				{"HandGrenade",2},
				{"SmokeShell",2}
			};
			backpackItems[] = {
				"ACE_Clacker",
				"ACE_DefusalKit",
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
			};
		};
		
		class Engineer: Rifleman
		{
			name = "Combat Engineer";
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"DemoCharge_Remote_Mag",2},
				{"HandGrenade",2},
				{"SmokeShell",2}
			};
			backpackItems[] = {
				"ACE_Clacker",
				"ACE_DefusalKit",
				"ToolKit",
				"ACE_wirecutter",
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
			};
		};
		
		class Medic: Rifleman
		{
			name = "Combat Medic";
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				{"SmokeShell",4},
				{"SmokeShellGreen",4}
			};
			backpackItems[] = {
				{"ACE_salineIV_500",10},
				{"ACE_fieldDressing",50},
				{"ACE_tourniquet",10},
				{"ACE_quikclot",20},
				{"ACE_epinephrine",10},
				{"ACE_morphine",10},
				{"ACE_atropine",10}
			};
		};

		class JTAC: SquadLeader
		{
			name = "JTAC";
			magazines[] = {
				{"30Rnd_556x45_Stanag",5},
				{"30Rnd_556x45_Stanag_Tracer_Red",2},
				{"1Rnd_HE_Grenade_shell",2},
				"1Rnd_Smoke_Grenade_shell",
				{"16Rnd_9x21_Mag",2},
				{"HandGrenade",2},
				"SmokeShell",
				"Laserbatteries"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				{"1Rnd_HE_Grenade_shell",4},
				{"1Rnd_Smoke_Grenade_shell",2},
				{"1Rnd_SmokeRed_Grenade_shell",6},
				{"1Rnd_SmokeGreen_Grenade_shell",4},
				{"UGL_FlareRed_F",2},
				{"UGL_FlareGreen_F",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
				{"SmokeShellPurple",2},
				{"Laserbatteries",1}
			};
			backpackItems[] = {
				"ACRE_PRC117F"
			};
			binoculars = "Laserdesignator";
		};

		class Marksman: Rifleman
		{
			name = "Marksman";
			primaryWeapon = "srifle_EBR_F";
			primaryWeaponItems[] = {"20Rnd_762x51_Mag","optic_SOS","bipod_01_F_blk","acc_pointer_IR"};
			handgun = "hgun_P07_F";
			handgunItems[] = {"16Rnd_9x21_Mag"};
			magazines[] = {
				{"20Rnd_762x51_Mag",5},
				{"ACE_20Rnd_762x51_Mag_Tracer",2},
				{"16Rnd_9x21_Mag",3},
				{"HandGrenade",2},
				"SmokeShell"
			};
			items[] += {"ACE_RangeCard"};
			assignedItems[] += {"ItemGPS"};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				{"16Rnd_9x21_Mag",3},
				{"HandGrenade",2},
				"SmokeShell"
				};
			backpackItems[] = {
				{"ACE_fieldDressing",2},
				"ACE_morphine",
				"ACE_tourniquet",
				"ACE_quikclot",
				};
			binoculars = "Rangefinder";
		};

		class Pilot: Base
		{
			name = "Pilot";
			primaryWeapon = "SMG_02_F";
			primaryWeaponItems[] = {"30Rnd_9x21_Mag_SMG_02","acc_pointer_IR"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				{"30Rnd_9x21_Mag_SMG_02",4},
				{"SmokeShellBlue",1},
				{"SmokeShellPurple",1}
			};
			assignedItems[] += {"ItemGPS"};
			backpack = "B_AssaultPack_rgr";
			backpackItems[] = {"ACRE_PRC117F"};
			uniform[] = {"U_B_HeliPilotCoveralls"};
			vest[] = {"V_TacVest_blk"};
			headgear[] = {"H_PilotHelmetHeli_B"};
			nvg = "NVGoggles";
		};

		class Crew: Base
		{
			name = "Crewman";
			primaryWeapon = "SMG_02_F";
			primaryWeaponItems[] = {"30Rnd_9x21_Mag_SMG_02","acc_pointer_IR"};
			magazines[] = {
				{"30Rnd_9x21_Mag_SMG_02",4},
				{"SmokeShellBlue",1},
				{"SmokeShell",2}
			};
			assignedItems[] += {"ItemGPS"};
			uniform[] = {"U_B_CTRG_2"};
			vest[] = {"V_TacVest_blk"};
			headgear[] = {"H_HelmetCrew_B"};
			nvg = "NVGoggles";
		};
		class CrewC: Crew
		{
			name = "Crew Commander";
			items[] += {"ACE_MapTools"};
			backpack = "B_AssaultPack_rgr";
			backpackItems[] = {"ACRE_PRC117F"};
			binoculars = "Binocular";
		};
	};
