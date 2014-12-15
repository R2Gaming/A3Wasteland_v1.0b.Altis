
if (isServer) then {

_CHELm = createMarker ["MarkerCHEL",[16684,13592]];
"MarkerCHEL" setmarkershape "ELLIPSE";
"MarkerCHEL" setmarkerbrush "Grid";
"MarkerCHEL" setmarkersize [200,200];
"MarkerCHEL" setmarkercolor "ColorBlack";


_mi5grp1A = createGroup independent;
_mi5grp1B = createGroup independent;


_mi5unit1 = _mi5grp1A createUnit ["I_G_Soldier_F",[16684,13592], [], 0, "FORM"];
_mi5unit2 = _mi5grp1A createUnit ["I_G_Soldier_F",[16684,13593], [], 0, "FORM"];
_mi5unit3 = _mi5grp1A createUnit ["I_G_Soldier_M_F",[16684,13594], [], 0, "FORM"];
_mi5unit4 = _mi5grp1A createUnit ["I_Soldier_AR_F",[16684,13595], [], 0, "FORM"];
_mi5unit5 = _mi5grp1A createUnit ["I_G_medic_F",[16684,13596], [], 0, "FORM"];
_mi5unit6 = _mi5grp1A createUnit ["I_G_medic_F",[16684,13597], [], 0, "FORM"];


_wp5A = _mi5grp1A addWaypoint [[16684,13592],0];
_wp5A setWaypointType "SAD";

_wp5B = _mi5grp1B addWaypoint [[16684,13592],0];
_wp5B setWaypointType "SAD";


_rewardCHEL = "Box_IND_WpsSpecial_F" createVehicle getMarkerPos "MarkerCHEL";

_rewardCHEL addmagazinecargo ["5Rnd_127x108_APDS_Mag",3];
_rewardCHEL addmagazinecargo ["30Rnd_556x45_Stanag",5];
_rewardCHEL addmagazinecargo ["30Rnd_65x39_caseless_green",5];
_rewardCHEL addmagazinecargo ["20Rnd_762x51_Mag",3];
_rewardCHEL addmagazinecargo ["HandGrenade",2];

	_WinCHEL = createTrigger ["EmptyDetector",[16684,13592,0]];
	_WinCHEL setTriggerArea [200,200,0,false];
	_WinCHEL setTriggerActivation ["GUER","NOT PRESENT", true];
	_WinCHEL setTriggerStatements["this", "hint 'Mission Finished'", ""]; 
	
	_DMCHELtrg = createTrigger ["EmptyDetector",[16684,13592,0]];
	_DMCHELtrg setTriggerArea [200,200,0,false];
	_DMCHELtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DMCHELtrg setTriggerStatements["this", "deleteMarker 'MarkerCHEL'", ""]; 
	
    _CHELtrg = createTrigger ["EmptyDetector",[16684,13592,0]];
	_CHELtrg setTriggerArea [200,200,0,false];
	_CHELtrg setTriggerTimeout [120, 120, 120, false];
	_CHELtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_CHELtrg setTriggerStatements["this", "nrpCHEL=0", ""]; 
	
	_DRCHELtrg = createTrigger ["EmptyDetector",[16684,13592,0]];
	_DRCHELtrg setTriggerArea [200,200,0,false];
	_DRCHELtrg setTriggerTimeout [100, 100, 100, false];
	_DRCHELtrg setTriggerActivation ["GUER", "NOT PRESENT", true];
	_DRCHELtrg setTriggerStatements["this", "deleteVehicle _rewardCHEL", ""]; 
	
};