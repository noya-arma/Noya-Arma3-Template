["Initialize", [true]] call BIS_fnc_dynamicGroups;

_baseFlag = "Flag_Redburger_F" createVehicle getMarkerPos "fobMarker";

_baseFlag allowDamage false;

_baseFlag addAction ["Open Garage",{

 	//Create a position 30 meters infront of the player
	_pos = player getPos [30,getDir player];

	//Create empty helipad at the position and save it in the global variable BIS_fnc_garage_center
	BIS_fnc_garage_center = createVehicle [ "Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE" ]; 

	[ "Open", true ] call BIS_fnc_garage; 
}];

civilian setFriend [west,1];
civilian setFriend [east,1];
east setFriend [west,0];
east setFriend [resistance,0];
resistance setFriend [west,0];
resistance setFriend [east,0];
west setFriend [east,0];
west setFriend [resistance,0];