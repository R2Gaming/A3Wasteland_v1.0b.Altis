

if (isServer) then {

_ppm = createMarker ["Markerppm",[15377.4,16066.6]];
"Markerppm" setmarkershape "ELLIPSE";
"Markerppm" setmarkerbrush "Grid";
"Markerppm" setmarkersize [200,200];
"Markerppm" setmarkercolor "ColorBlack";


_mi1grp1A = createGroup independent;
_mi1grp1B = createGroup independent;


_mi1unit1 = _mi1grp1A createUnit ["I_G_Soldier_F",[15347,16040], [], 0, "FORM"];
_mi1unit2 = _mi1grp1A createUnit ["I_G_Soldier_F",[15393,16068], [], 0, "FORM"];
_mi1unit3 = _mi1grp1A createUnit ["I_G_Soldier_M_F",[15352,16081], [], 0, "FORM"];
_mi1unit4 = _mi1grp1A createUnit ["I_Soldier_AR_F",[15323,16102], [], 0, "FORM"];
_mi1unit5 = _mi1grp1A createUnit ["I_G_Soldier_M_F",[15379,16112], [], 0, "FORM"];
_mi1unit6 = _mi1grp1A createUnit ["I_G_medic_F",[15394,16017], [], 0, "FORM"];
_mi1unit7 = _mi1grp1A createUnit ["I_G_Soldier_F",[15378,16007], [], 0, "FORM"];
_mi1unit8 = _mi1grp1B createUnit ["I_G_Soldier_F",[15378,16007], [], 0, "FORM"];
_mi1unit9 = _mi1grp1B createUnit ["I_G_medic_F",[15379,15950], [], 0, "FORM"];
_mi1unit10 = _mi1grp1B createUnit ["I_G_Soldier_M_F",[15379,15950], [], 0, "FORM"];
_mi1unit11 = _mi1grp1B createUnit ["I_Soldier_AR_F",[15379,15950], [], 0, "FORM"];
_mi1unit12 = _mi1grp1B createUnit ["I_G_Soldier_M_F",[15379,15950], [], 0, "FORM"];

_wpA1 = _mi1grp1A addWaypoint [[15379,16054],0];
_wpA1 setWaypointType "SAD";

_wpA2 = _mi1grp1A addWaypoint [[15311,16135],0];
_wpA2 setWaypointType "SAD";

_wpA3 = _mi1grp1A addWaypoint [[15416,15867],0];
_wpA3 setWaypointType "CYCLE";

_wpB1 = _mi1grp1B addWaypoint [[15379,16054],0];
_wpB1 setWaypointType "SAD";


_rewardPPM = "Box_IND_WpsSpecial_F" createVehicle getMarkerPos "Markerppm";

removeAllItems _rewardPPM;
removeAllWeapons _rewardPPM;

_rewardPPM addmagazinecargo ["5Rnd_127x108_APDS_Mag",3];
_rewardPPM addmagazinecargo ["30Rnd_556x45_Stanag",5];
_rewardPPM addmagazinecargo ["30Rnd_65x39_caseless_green",5];
_rewardPPM addmagazinecargo ["20Rnd_762x51_Mag",3];
_rewardPPM addmagazinecargo ["HandGrenade",2];


	_WinPPM = createTrigger ["EmptyDetector",[15377.4,16066.6,0]];
	_WinPPM setTriggerArea [200,200,0,false];
	_WinPPM setTriggerActivation ["GUER","NOT PRESENT", true];
	_WinPPM setTriggerStatements["this", "hint 'Bandits have been eliminated at the Power Plant!'", ""]; 
	
	_DMPPMtrg = createTrigger ["EmptyDetector",[15377.4,16066.6,0]];
	_DMPPMtrg setTriggerArea [200,200,0,false];
	_DMPPMtrg setTriggerActivation ["GUER","NOT PRESENT", true];
	_DMPPMtrg setTriggerStatements["this", "deleteMarker 'Markerppm'", ""]; 
	
    _PPMtrg = createTrigger ["EmptyDetector",[15377.4,16066.6,0]];
	_PPMtrg setTriggerArea [300,300,0,false];
	_PPMtrg setTriggerActivation ["CIV","NOT PRESENT", true];
	_PPMtrg setTriggerStatements["this", "nrpPPM=0", ""]; 
	
	_DRPPMtrg = createTrigger ["EmptyDetector",[15377.4,16066.6,0]];
	_DRPPMtrg setTriggerArea [200,200,0,false];
	_DRPPMtrg setTriggerTimeout [300, 300, 300, false];
	_DRPPMtrg setTriggerActivation ["GUER","NOT PRESENT", true];
	_DRPPMtrg setTriggerStatements["this", "deleteVehicle _rewardPPM", ""]; 
	
} else {
	
};
