/*
	fnc_initTrigger version 0.08
	
	Initializes variables for static and dynamic triggers when called by fnc_spawnBandits_bldgs, fnc_spawnBandits_markers, and fnc_spawnBandits_random_NR.
	These variables are retrieved for respawning and despawning AI.
*/

private["_trigger"];

_trigger = _this select 0;
_trigger setVariable ["isCleaning",false,false];
_trigger setVariable ["GroupArray",(_this select 1),false];
_trigger setVariable ["spawnCount",(_this select 2),false];
if ((count _this) > 3) then {
	_trigger setVariable ["patrolDist",(_this select 3),false];
	_trigger setVariable ["gradeChances",(_this select 4),false];
	_trigger setVariable ["locationArray",(_this select 5),false];
	DZAI_actTrigs = DZAI_actTrigs + 1;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Initialized static trigger %1. GroupArray: %2, SpawnCount: %3, PatrolDist: %4. GradeChances: %5. %LocationArray %6.",(_this select 0),(_this select 1),(_this select 2),(_this select 3),(_this select 4),(_this select 5)];};
} else {
	DZAI_actDynTrigs = DZAI_actDynTrigs + 1;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Initialized dynamic trigger %1. GroupArray: %2, SpawnCount %3.",(_this select 0),(_this select 1),(_this select 2)];};
};
DZAI_numAIUnits = DZAI_numAIUnits + (_this select 2);
