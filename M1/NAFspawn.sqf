if (isServer) then {

_nafm = createMarker ["MarkerNAF",[9144.51,21486.6]];

"Markernaf" setmarkershape "ELLIPSE";
"Markernaf" setmarkerbrush "Grid";
"Markernaf" setmarkersize [200,200];
"Markernaf" setmarkercolor "ColorBlack";


_mi2grp1A = createGroup independent;
_mi2grp1B = createGroup independent;


_mi2unit1 = _mi2grp1A createUnit ["I_G_Soldier_F",[9145,21486], [], 0, "FORM"];
_mi2unit2 = _mi2grp1A createUnit ["I_G_Soldier_F",[9145,21486], [], 0, "FORM"];
_mi2unit3 = _mi2grp1A createUnit ["I_G_Soldier_M_F",[9145,21486], [], 0, "FORM"];
_mi2unit4 = _mi2grp1A createUnit ["I_Soldier_AR_F",[9145,21486], [], 0, "FORM"];
_mi2unit5 = _mi2grp1A createUnit ["I_G_Soldier_M_F",[9145,21486], [], 0, "FORM"];
_mi2unit6 = _mi2grp1A createUnit ["I_G_medic_F",[9145,21486], [], 0, "FORM"];
_mi2unit7 = _mi2grp1B createUnit ["I_G_Soldier_F",[9180.68,21658.2], [], 0, "FORM"];
_mi2unit8 = _mi2grp1B createUnit ["I_G_Soldier_F",[9180.68,21658.2], [], 0, "FORM"];
_mi2unit9 = _mi2grp1B createUnit ["I_G_medic_F",[9180.68,21658.2], [], 0, "FORM"];
_mi2unit10 = _mi2grp1B createUnit ["I_G_Soldier_M_F",[9180.68,21658.2], [], 0, "FORM"];
_mi2unit11 = _mi2grp1B createUnit ["I_Soldier_AR_F",[9180.68,21658.2], [], 0, "FORM"];
_mi2unit12 = _mi2grp1B createUnit ["I_G_Soldier_M_F",[9180.68,21658.2], [], 0, "FORM"];

_wp2A = _mi2grp1A addWaypoint [[9145,21486],0];
_wp2A setWaypointType "SAD";

_wp2B = _mi2grp1B addWaypoint [[9180.68,21658.2],0];
_wp2B setWaypointType "SAD";

_rewardNAF2 = "I_Heli_light_03_unarmed_F" createVehicle getMarkerPos "MarkerNAF";
_rewardNAF = "Box_IND_WpsSpecial_F" createVehicle getMarkerPos "MarkerNAF";

_rewardNAF addmagazinecargo ["5Rnd_127x108_APDS_Mag",3];
_rewardNAF addmagazinecargo ["30Rnd_556x45_Stanag",5];
_rewardNAF addmagazinecargo ["30Rnd_65x39_caseless_green",5];
_rewardNAF addmagazinecargo ["20Rnd_762x51_Mag",3];
_rewardNAF addmagazinecargo ["HandGrenade",2];


	_WinNAF = createTrigger ["EmptyDetector",[9144.51,21486.6,0]];
	_WinNAF setTriggerArea [200,200,0,false];
	_WinNAF setTriggerActivation ["GUER","NOT PRESENT", true];
	_WinNAF setTriggerStatements["this", "hint 'Mission Finished'", ""]; 
	
	_DMNAFtrg = createTrigger ["EmptyDetector",[9144.51,21486.6,0]];
	_DMNAFtrg setTriggerArea [200,200,0,false];
	_DMNAFtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DMNAFtrg setTriggerStatements["this", "deleteMarker 'MarkerNAF'", ""]; 
	
    _NAFtrg = createTrigger ["EmptyDetector",[9144.51,21486.6,0]];
	_NAFtrg setTriggerArea [200,200,0,false];
	_NAFtrg setTriggerTimeout [120, 120, 120, false];
	_NAFtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_NAFtrg setTriggerStatements["this", "nrpNAF=0", ""]; 
	
	_DRNAFtrg = createTrigger ["EmptyDetector",[9144.51,21486.6,0]];
	_DRNAFtrg setTriggerArea [200,200,0,false];
	_DRNAFtrg setTriggerTimeout [100, 100, 100, false];
	_DRNAFtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DRNAFtrg setTriggerStatements["this", "deleteVehicle _rewardNAF", ""]; 
		
};