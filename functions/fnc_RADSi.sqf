/*
Author:
 	rocko && Cigaro
 	reworked by zinki && Cigaro

Description:
	Simulation of radioactive areas

Parameter:
	0: Position (i.e. getMarkerPos "markerName" or getPos ObjectName)
	1: Frist distance/Radius in meter
	2: Secound distance/Radius in meter
	3: Third distance/Radius in meter

Execute::
	init.sqf:
	TSS_fnc_RADS = compile preprocessFileLineNumbers "functions\fnc_RADSi.sqf";

	radareas.sqf:
	_handle = [getMarkerPos "Radiaktiv1", 500, 400, 200] spawn TSS_fnc_RADS;
	_handle = [getMarkerPos "Markername", lowredarea, midradare, highradarea] spawn TSS_fnc_RADS;
*/

if (!hasInterface) exitWith {};

#define __DELAY getNumber (missionConfigFile >> "CfgSounds" >> _sound >> "delay")
#define __DISTANCE (player distance _pos)

Params ["_pos", "_dis1", "_dis2", "_dis3"];

waitUntil {sleep 20; __DISTANCE < _dis1};

while {true} do {

	if (__DISTANCE < _dis1 && {__DISTANCE > _dis2}) then {
	_sound = "RadiationLow";
 	playsound _sound;
	_ppradlow = ppEffectCreate ["dynamicBlur", 20];
	_ppradlow ppEffectEnable true;
	_ppradlow ppEffectAdjust [0.4];
	_ppradlow ppEffectCommit 2;
 	sleep __DELAY;
 	};

								if (__DISTANCE > _dis1) then {
									_ppradlow = ppEffectCreate ["dynamicBlur", 20];
									_ppradlow ppEffectEnable false;
								};

	if (__DISTANCE < _dis2 && {__DISTANCE > _dis3}) then {
	_sound = "RadiationMedium";
 	playsound _sound;
	_ppradmid = ppEffectCreate ["dynamicBlur", 21];
	_ppradmid ppEffectEnable true;
	_ppradmid ppEffectAdjust [0.9];
	_ppradmid ppEffectCommit 3;
 	sleep __DELAY;
 	};

								if (__DISTANCE > _dis2) then {
									_ppradmid = ppEffectCreate ["dynamicBlur", 21];
									_ppradmid ppEffectEnable false;
								};

 	if (__DISTANCE < _dis3) then {
 	_sound = "RadiationHigh";
 	playsound _sound;
	_ppradhigh1 = ppEffectCreate ["filmGrain", 23];
	_ppradhigh1 ppEffectEnable true;
 	_ppradhigh1 ppEffectAdjust [0.1, -5, 0.1, 0.01, 5, false];
 	_ppradhigh1 ppEffectCommit 4;

	_ppradhigh2 = ppEffectCreate ["radialBlur", 24];
	_ppradhigh2 ppEffectEnable true;
 	_ppradhigh2 ppEffectAdjust [0.01,0.01,0.15,0.15];
 	_ppradhigh2 ppEffectCommit 4;

	_ppradhigh3 = ppEffectCreate ["ColorCorrections", 25];
	_ppradhigh3 ppEffectEnable true;
 	_ppradhigh3 ppEffectAdjust [1, 1, 0, [0, 0, 0, 0.72],[5, 5, 5, -0.48],[0.2, 0.59, 0.11, 0]];
 	_ppradhigh3 ppEffectCommit 4;
 	sleep __DELAY;

	};
								if (__DISTANCE > _dis3) then {
									_ppradhigh1 = ppEffectCreate ["filmGrain", 23];
									_ppradhigh2 = ppEffectCreate ["radialBlur", 24];
									_ppradhigh3 = ppEffectCreate ["ColorCorrections", 25];
									_ppradhigh1 ppEffectEnable false;
									_ppradhigh2 ppEffectEnable false;
									_ppradhigh3 ppEffectEnable false;
								};
};