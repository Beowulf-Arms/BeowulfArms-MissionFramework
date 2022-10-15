/////bmf-v1////

// In this file, you can execute custom scripts

if (isServer) then {
    // Put things that happen on the server here.
    // Examples: Fill ammo boxes, set up public variables


};


if (hasInterface) then {
    // Put player/client scripts here.
    // Note: player is guaranteed to exist here.
    // Examples: Create ace interactions

	// Recommended ACE Dray + Carry settings for object moving.
    ACE_maxWeightDrag = 10000;
    ACE_maxWeightCarry  = 10000;

};
