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
	

}];