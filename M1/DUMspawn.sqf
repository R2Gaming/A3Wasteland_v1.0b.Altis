

if (isServer) then {

_DUMm = createMarker ["MarkerDUM",[5886,20266]];
"MarkerDUM" setmarkershape "ELLIPSE";
"MarkerDUM" setmarkerbrush "Grid";
"MarkerDUM" setmarkersize [200,200];
"MarkerDUM" setmarkercolor "ColorBlack";


_mi3grp1A = createGroup independent;
_mi3grp1B = createGroup independent;


_mi3unit1 = _mi3grp1A createUnit ["I_G_Soldier_F",[5865,20117], [], 0, "FORM"];
_mi3unit2 = _mi3grp1A createUnit ["I_G_Soldier_F",[5865,20118], [], 0, "FORM"];
_mi3unit3 = _mi3grp1A createUnit ["I_G_Soldier_M_F",[5865,201197], [], 0, "FORM"];
_mi3unit4 = _mi3grp1A createUnit ["I_Soldier_AR_F",[5865,20116], [], 0, "FORM"];
_mi3unit5 = _mi3grp1A createUnit ["I_G_medic_F",[5865,20115], [], 0, "FORM"];
_mi3unit6 = _mi3grp1A createUnit ["I_G_medic_F",[5865,20114], [], 0, "FORM"];
_mi3unit7 = _mi3grp1B createUnit ["I_G_Soldier_F",[5886,20266], [], 0, "FORM"];
_mi3unit8 = _mi3grp1B createUnit ["I_G_Soldier_F",[5886,20267], [], 0, "FORM"];
_mi3unit9 = _mi3grp1B createUnit ["I_G_medic_F",[5886,20268], [], 0, "FORM"];
_mi3unit10 = _mi3grp1B createUnit ["I_G_Soldier_M_F",[5886,20269], [], 0, "FORM"];
_mi3unit11 = _mi3grp1B createUnit ["I_Soldier_AR_F",[5886,20265], [], 0, "FORM"];
_mi3unit12 = _mi3grp1B createUnit ["I_G_medic_F",[5886,20264], [], 0, "FORM"];

_wp3A = _mi3grp1A addWaypoint [[5865,20117],0];
_wp3A setWaypointType "SAD";

_wp3B = _mi3grp1B addWaypoint [[5886,20266],0];
_wp3B setWaypointType "SAD";

_rewardDUM = "B_MRAP_01_F" createVehicle getMarkerPos "MarkerDUM";
_rewardDUM = "Box_IND_WpsSpecial_F" createVehicle getMarkerPos "MarkerDUM";

_rewardDUM addmagazinecargo ["5Rnd_127x108_APDS_Mag",3];
_rewardDUM addmagazinecargo ["30Rnd_556x45_Stanag",5];
_rewardDUM addmagazinecargo ["30Rnd_65x39_caseless_green",5];
_rewardDUM addmagazinecargo ["20Rnd_762x51_Mag",3];
_rewardDUM addmagazinecargo ["HandGrenade",2];

	_WinDUM = createTrigger ["EmptyDetector",[5886,20266,0]];
	_WinDUM setTriggerArea [200,200,0,false];
	_WinDUM setTriggerActivation ["GUER","NOT PRESENT", true];
	_WinDUM setTriggerStatements["this", "hint 'Mission Finished'", ""]; 
	
	_DMDUMtrg = createTrigger ["EmptyDetector",[5886,20266,0]];
	_DMDUMtrg setTriggerArea [200,200,0,false];
	_DMDUMtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DMDUMtrg setTriggerStatements["this", "deleteMarker 'MarkerDUM'", ""]; 
	
    _DUMtrg = createTrigger ["EmptyDetector",[5886,20266,0]];
	_DUMtrg setTriggerArea [200,200,0,false];
	_DUMtrg setTriggerTimeout [120, 120, 120, false];
	_DUMtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DUMtrg setTriggerStatements["this", "nrpDUM=0", ""]; 
	
	_DRDUMtrg = createTrigger ["EmptyDetector",[5886,20266,0]];
	_DRDUMtrg setTriggerArea [200,200,0,false];
	_DRDUMtrg setTriggerTimeout [100, 100, 100, false];
	_DRDUMtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DRDUMtrg setTriggerStatements["this", "deleteVehicle _rewardDUM", ""]; 
	
	};