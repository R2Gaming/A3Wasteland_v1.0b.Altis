if (isServer) then {
_EVmTHER = createMarker ["MarkerTHEREM",[10661,12276]];
"MarkerTHEREM" setmarkershape "ELLIPSE";
"MarkerTHEREM" setmarkerbrush "Cross";
"MarkerTHEREM" setmarkersize [400,400];
"MarkerTHEREM" setmarkercolor "Color3_FD_F";

_grp1a = createGroup independent; _grp1b = createGroup independent; _grp2 = createGroup independent; _grp3 = createGroup independent; _grp4 = createGroup independent; _grp5 = createGroup independent; _grp6 = createGroup independent;_grp7 = createGroup independent; _grp8 = createGroup independent;_grp9 = createGroup independent; _grp10 = createGroup independent;
_grp11 = createGroup independent;


_sol1 = _grp1a createUnit ["I_G_Soldier_F",[10646,12297], [], 0, "NONE"];
_sol1 lookat [10636,12292];
_sol2 = _grp1b createUnit ["I_G_Soldier_F",[10639,12302], [], 0, "NONE"];
_sol2 lookat [10636,12292];

_sol3 = _grp2 createUnit ["I_G_Soldier_F",[10564,12332], [], 0, "FORM"];
_sol4 = _grp2 createUnit ["I_G_medic_F",[10564,12332], [], 0, "FORM"];
_sol5 = _grp2 createUnit ["I_G_Soldier_F",[10564,12332], [], 0, "FORM"];

_wp1g2 = _grp2 addWaypoint [[10674,12264],0];
_wp1g2 setWaypointType "SAD";
_wp2g2 = _grp2 addWaypoint [[10564,12332],0];
_wp2g2 setWaypointType "CYCLE";

_sol6 = _grp3 createUnit ["I_G_Soldier_F",[10618,12206], [], 0, "FORM"];
_sol7 = _grp3 createUnit ["I_G_medic_F",[10618,12206], [], 0, "FORM"];
_sol8 = _grp3 createUnit ["I_G_Soldier_F",[10618,12206], [], 0, "FORM"];

_wp1g3 = _grp3 addWaypoint [[10674,12264],0];
_wp1g3 setWaypointType "SAD";
_wp2g3 = _grp3 addWaypoint [[10564,12332],0];
_wp2g3 setWaypointType "SAD";
_wp3g3 = _grp3 addWaypoint [[10534,12296],0];
_wp3g3 setWaypointType "SAD";
_wp4g3 = _grp3 addWaypoint [[10618,12206],0];
_wp4g3 setWaypointType "CYCLE";

_sol9 = _grp4 createUnit ["I_G_Soldier_F",[10745,12312], [], 0, "FORM"];
_sol10 = _grp4 createUnit ["I_G_medic_F",[10745,12312], [], 0, "FORM"];
_sol11 = _grp4 createUnit ["I_G_Soldier_F",[10745,12312], [], 0, "FORM"];

_wp1g4 = _grp4 addWaypoint [[10635,12361],0];
_wp1g4 setWaypointType "SAD";
_wp2g4 = _grp4 addWaypoint [[10745,12312],0];
_wp2g4 setWaypointType "CYCLE";

_sol12 = _grp5 createUnit ["I_G_Soldier_F",[10423,12392], [], 0, "NONE"];
_sol12 lookat [10383,12421];
_sent1 = "I_HMG_01_high_F" createVehicle position _sol12;
_sent2 lookat [10383,12421];
_sol12 moveInGunner _sent1;

_sol13 = _grp6 createUnit ["I_G_Soldier_F",[10581,12181], [], 0, "NONE"];
_sol13 lookat [10560,12157];
_sent2 = "I_HMG_01_high_F" createVehicle position _sol13;
_sent2 lookat [10560,12157];
_sol13 moveInGunner _sent2;

_sol14 = _grp7 createUnit ["I_G_Soldier_F",[10768,12197], [], 0, "NONE"];
_sol14 lookat [10836,12152];
_sent3 = "I_HMG_01_high_F" createVehicle position _sol14;
_sent3 lookat [10836,12152];
_sol14 moveInGunner _sent3;

_sol15 = _grp8 createUnit ["I_G_Soldier_F",[10534,12296], [], 0, "FORM"];
_sol16 = _grp8 createUnit ["I_G_medic_F",[10534,12296], [], 0, "FORM"];
_sol17 = _grp8 createUnit ["I_G_Soldier_F",[10534,12296], [], 0, "FORM"];

_wp1g8 = _grp8 addWaypoint [[10444,12380],0];
_wp1g8 setWaypointType "SAD";
_wp2g8 = _grp8 addWaypoint [[10594,12386],0];
_wp2g8 setWaypointType "SAD";
_wp3g8 = _grp8 addWaypoint [[10534,12296],0];
_wp3g8 setWaypointType "CYCLE";

_sol18 = _grp9 createUnit ["I_G_Soldier_F",[10821,11843], [], 0, "FORM"];
_sol19 = _grp9 createUnit ["I_G_medic_F",[10821,11843], [], 0, "FORM"];
_sol20 = _grp9 createUnit ["I_G_Soldier_F",[10821,11843], [], 0, "FORM"];
_sol21 = _grp9 createUnit ["I_G_Soldier_F",[10821,11843], [], 0, "FORM"];
_sol22 = _grp9 createUnit ["I_G_medic_F",[10821,11843], [], 0, "FORM"];

_wp1g9 = _grp9 addWaypoint [[10681,12088],0];
_wp1g9 setWaypointType "SAD";
_wp2g9 = _grp9 addWaypoint [[10541,12008],0];
_wp2g9 setWaypointType "SAD";
_wp3g9 = _grp9 addWaypoint [[10700,11879],0];
_wp3g9 setWaypointType "SAD";
_wp4g9 = _grp9 addWaypoint [[10821,11843],0];
_wp4g9 setWaypointType "CYCLE";

_sol23 = _grp10 createUnit ["I_G_Soldier_F",[10604,12140], [], 0, "FORM"];
_sol24 = _grp10 createUnit ["I_G_medic_F",[10604,12140], [], 0, "FORM"];
_sol25 = _grp10 createUnit ["I_G_Soldier_F",[10604,12140], [], 0, "FORM"];
_sol26 = _grp10 createUnit ["I_G_Soldier_F",[10604,12140], [], 0, "FORM"];
_sol27 = _grp10 createUnit ["I_G_medic_F",[10604,12140], [], 0, "FORM"];

_wp1g10 = _grp10 addWaypoint [[10788,12375],0];
_wp1g10 setWaypointType "SAD";
_wp2g10 = _grp10 addWaypoint [[10568,12260],0];
_wp2g10 setWaypointType "SAD";
_wp3g10 = _grp10 addWaypoint [[10604,12140],0];
_wp3g10 setWaypointType "CYCLE";

_sol25 = _grp11 createUnit ["I_G_Soldier_F",[10626,12255], [], 0, "FORM"];
_sol26 = _grp11 createUnit ["I_G_medic_F",[10626,12255], [], 0, "FORM"];

};