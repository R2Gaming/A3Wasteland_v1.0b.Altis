
if (isServer) then {

_mi4grp1A = createGroup civilian;


_ConTruck = createVehicle ["I_Truck_02_transport_F", [26797,23073], [], 0, "NONE"];

_mi4unit1 = _mi4grp1A createUnit ["I_G_Soldier_F",[26797,23073], [], 0, "FORM"];
_mi4unit2 = _mi4grp1A createUnit ["I_G_Soldier_F",[26797,23074], [], 0, "FORM"];
_mi4unit3 = _mi4grp1A createUnit ["I_G_Soldier_M_F",[26797,23075], [], 0, "FORM"];
_mi4unit4 = _mi4grp1A createUnit ["I_Soldier_AR_F",[26797,23076], [], 0, "FORM"];
_mi4unit5 = _mi4grp1A createUnit ["I_G_Soldier_M_F",[26797,23077], [], 0, "FORM"];
_mi4unit6 = _mi4grp1A createUnit ["I_G_medic_F",[26797,23077], [], 0, "FORM"];

_mi4unit1 moveInDriver _ConTruck;
_mi4unit2 moveInCargo _ConTruck;
_mi4unit3 moveInCargo _ConTruck;
_mi4unit4 moveInCargo _ConTruck;
_mi4unit5 moveInCargo _ConTruck;
_mi4unit6 moveInCargo _ConTruck;

_wpA1 = _mi1grp1A addWaypoint [[20920,16897],0];
_wpA1 setWaypointType "MOVE";
_wpA1 setWaypointBehaviour "SAFE";

waituntil {!alive _mi4unit1};
	nrpCON=0;

};
