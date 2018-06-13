var items  = argument0;
var coords = argument1;
var cast   = argument2;

// ItemsToUse is owned by the oPlayerTurn object for its reference
itemsToUse = items; 

// Create item object
for (var i = 0; i < array_length_2d(coords, 0); i++) {
	var c = coords[0, i];
	// check if item
	if (IsItem(c[0], c[1])) {
		var it = instance_create_layer(	(c[0] * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
										(c[1] * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
										"PointsLayer",
										oItemObject);
		it.type   = ds_grid_get(global.grid, c[0], c[1]) mod 10;
		it.target = thisPlayerObject;
		it.gridX  = c[0];
		it.gridY  = c[1];
	}
}

// If the spell does not consume the item
if (!cast) {
	audio_play_sound(soSelectSpell, 0, 0);
			
	// Animate Puzzle Piece
	for (var i = 0; i < array_length_2d(coords, 0); i++) {
		var c = coords[0, i];
		if (ds_grid_get(global.grid, c[0], c[1]) < 10)
			ds_grid_set(global.grid, c[0], c[1], ds_grid_get(global.grid, c[0], c[1]) + 10);
	}	
			
	if (alarm[8] == -1)
		alarm[8] = whitePieceLength;
}