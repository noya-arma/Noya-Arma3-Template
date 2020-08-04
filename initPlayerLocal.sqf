["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

[player, "fobMarker", "FOB"] call BIS_fnc_addRespawnPosition;

player addAction ["Arsenal", 
		{
			[ "Open", [ true ] ] call BIS_fnc_arsenal;
		},
		nil,
		1.5,
		false,
		true,
		"",
		"_this distance markerPos 'fobMarker' < 32",
		0
];
player addAction ["Open Garage",{

 	//Create a position 30 meters infront of the player
	_pos = player getPos [30,getDir player];

	//Create empty helipad at the position and save it in the global variable BIS_fnc_garage_center
	BIS_fnc_garage_center = createVehicle [ "Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE" ]; 

	[ "Open", true ] call BIS_fnc_garage; 
}];


player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];

	player addAction ["Arsenal", 
		{
			[ "Open", [ true ] ] call BIS_fnc_arsenal;
		},
		nil,
		1.5,
		false,
		true,
		"",
		"_this distance markerPos 'fobMarker' < 32",
		0
	];
	
	player addAction ["Open Garage",{

 	//Create a position 30 meters infront of the player
	_pos = player getPos [30,getDir player];

	//Create empty helipad at the position and save it in the global variable BIS_fnc_garage_center
	BIS_fnc_garage_center = createVehicle [ "Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE" ]; 

	[ "Open", true ] call BIS_fnc_garage; 
}];

}];