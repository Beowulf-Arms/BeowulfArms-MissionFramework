/////bmf-v2_2////

// In this file, you can execute custom scripts

if (isServer) then {
    // Put things that happen on the server here.
    // Examples: Fill ammo boxes, set up public variables



};


if (hasInterface) then {
    // Put player/client scripts here.
    // Note: player is guaranteed to exist here.
    // Examples: Create ace interactions


    ACE_maxWeightDrag = 10000;
    ACE_maxWeightCarry  = 10000;
	[] spawn {
		waitUntil {trigger_BSOstart};

		if (!(typeOf player == "B_pilot_F"))  then {
		[ 
			["Alpini","font = 'PuristaSemiBold'"],
			["","<br/>"],
			["Walker","font = 'PuristaMedium'"],
			["","<br/>"],
			['"Nec descendere nec morari!" - Alpini Motto',"font = 'PuristaLight'"]
		]  execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";
			
			_beret = headgear player; //H_Hat_grey
			removeHeadgear player;
			_helmet = selectRandom ["sp_Helmet_Mk3HSAT_Cover_Od_Scrim_1","sp_Helmet_Mk3HSAT_Cover_Od_Scrim_2","sp_Helmet_Mk3HSAT_Cover_Od_Scrim_3","sp_Helmet_Mk3HSAT_Cover_Od_Scrim_4"];
			player addHeadgear _helmet;
			//player addItem _beret;
		};		
	};

};
