["Initialize", [true]] call BIS_fnc_dynamicGroups;

_baseFlag = "Flag_Redburger_F" createVehicle getMarkerPos "fobMarker";

_baseFlag allowDamage false;



civilian setFriend [west,1];
civilian setFriend [east,1];
east setFriend [west,0];
east setFriend [resistance,0];
resistance setFriend [west,0];
resistance setFriend [east,0];
west setFriend [east,0];
west setFriend [resistance,0];