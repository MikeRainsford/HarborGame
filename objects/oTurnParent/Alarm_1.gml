/// @description Delete

var dat = thisPlayerSpellData;
var ind = thisPlayerSpellBookIndex;

// Delete main body pieces
for (var i = 0; i < ds_grid_width(global.grid); i++) {
	for (var j = 0; j < ds_grid_height(global.grid); j++) {
		if (ds_grid_get(global.grid, i, j) >= 20) {
			
			// Delete piece
			ds_grid_set(global.grid, i, j, 0);
			
			// Spawn score point
			var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
										  (j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
										  "PointsLayer", oText);	
			p.pointValue = 1;
		}
	}
}

// If chaining
if (SpellChar("pieceToChain", dat, ind) != -1) {
	// Create Priority grid
	var ww = oPuzzleBoard.gridWidth;
	var hh = oPuzzleBoard.gridHeight;

	// Pull data from main grid
	for (var i = 0; i < ww; i++) {
		for (var j = 0; j < hh; j++) {
			if (ds_grid_get(global.grid, i, j) == 0)
				ds_grid_set(global.pGrid, i, j, 0);
			else
				ds_grid_set(global.pGrid, i, j, -1);
		}
	}
	
	// Start wave
	waveCounter   = 0;
	chainCounter  = 1;
	preChainCount = CountPiece(SpellChar("pieceToChain", dat, ind)); // count pieces before chain
	Wave(1, SpellChar("pieceToChain", dat, ind));
	alarm[3] = chainSpaceLength;

}
else {
	// Refill Pieces
	alarm[2] = emptyPieceLength;
	damageToDeal += CalculateSpellDamage();
	// Spawn Spell
	CreateSpellObject(damageToDeal);
}	