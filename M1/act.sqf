r=0;

_rnum = round(random 10);


if (_rnum==1 && nrpPPM != 1) then {
		null=[] execVM "M1\PPMspawn.sqf";
		nrpPPM = 1;
};
if (_rnum==2 && nrpNAF != 1) then {
		null=[] execVM "M1\NAFspawn.sqf";
		nrpNAF = 1;
};		
if (_rnum==3 && nrpDUM != 1) then {
		null=[] execVM "M1\DUMspawn.sqf";
		nrpDUM = 1;
};
if (_rnum==4 && nrpCHEL != 1) then {
		null=[] execVM "M1\CHELspawn.sqf";
		nrpCHEL = 1;
};