/////bmf-v1////

if (!didJIP) exitwith {};

[] spawn { // TODO: CBA!
	sleep 5;
	movetoSL = player addAction ["Teleport To SL", {
		player removeAction movetoSL;
		movetoSL = -1;
		[player] remoteExec ["bso_jiptp_fnc_teleport", 2];
	}];
	sleep 10;
	hintSilent "Use your scroll wheel to teleport to your squad";
	sleep 180;//3min
	if (movetoSL != -1) then {
		player removeAction movetoSL;
	};
};
