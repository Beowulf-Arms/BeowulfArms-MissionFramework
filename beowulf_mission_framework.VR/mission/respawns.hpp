/////bmf-v1////

// Use the template below to activate respawns
// See wiki for further references and examples https://beowulfso.com/wiki/BSO_Respawn_System

/*
class BSORespawns
{
    class west // valid sides are west, east, guer, civ. Unused ones can be skipped
    {
        sideTickets = 20; // tickets for this side. default 0.
        personalTickets = 0; // tickets per person. will be consumed first. default 0 -> Entry could be skipped in this case.
        personalTicketsUnit[] = {{"jtac_0", 3}, {"pl_0", 2}}; // Specific personal ticket count for certain units. Those replace the amount given in personalTickets for those units.
        // once there are no more tickets, people will be sent to ace spectator (no box). Happens automatically and does not require the onTicketsDepleted to do anything special.

        // If there are no respawn points defined, players will be sent to ace spectator anyways, but will keep their tickets (can be used for wave respawn with tickets)

        onTicketsDepleted = "mission\respawnTicketsDepleted.sqf"; // File will be executed on the server when side tickets run out. This is optional and can be used for custom behaviour. Only parameter is the side.

        class MHQ // Some vehicle spawn point. This is the name it will be referenced by; it needs to be unique across all sides
        {
            name = "Mobile HQ"; // displayed name
            object = "b_mhq"; // variable name of a vehicle. Spawn point will become unavailable if vehicle is destroyed
        };
        class FirstObjective // Some marker spawn point
        {
            name = "First Object Respawn";
            marker = "obj_1"; // some map marker
            disabled = true; // won't show up until enabled via command (see below)
        };
        class PilotRespawn
        {
            name = "Airfield";
            marker = "airfield";
            units[] = {"pilot_1", "pilot_2"}; // only those units will be able to see this spawnpoint
        };
    };
};
*/
