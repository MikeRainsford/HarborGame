/// @description Delete

// Delete main body pieces
for (var i = 0; i < ds_grid_width(global.grid); i++) {
	for (var j = 0; j < ds_grid_height(global.grid); j++) {
		if (ds_grid_get(global.grid, i, j) >= 20) {
		
			ds_grid_set(global.grid, i, j, 0);
			
			// Spawn score point
			var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
										  (j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
										  "PointsLayer", oPoints);	
			p.pointValue = 1;
		}
	}
}

// If chaining
if (global.spellData[sp, spellC.PieceToChain] != -1) {
	// Create priority grid
	for (var i = 0; i < oPuzzleBoard.gridWidth; i++) {
		for (var j = 0; j < oPuzzleBoard.gridHeight; j++) {
			if (ds_grid_get(global.grid, i, j) == 0)
				ds_grid_set(global.pGrid, i, j, 0);
			else
				ds_grid_set(global.pGrid, i, j, -1);
		}
	}
	
	// Start wave
	waveCounter   = 0;
	chainCounter  = 1;
	preChainCount = CountPiece(global.spellData[sp, spellC.PieceToChain]); // count pieces before chain
	Wave(1, global.spellData[sp, spellC.PieceToChain]);
	alarm[3] = chainSpaceLength;

}
else {
	// Trigger next event in the chain
	alarm[2] = emptyPieceLength;
	
	damageToDeal += CalculateSpellDamage();
	
	// Spawn Spell if accuracy lands
	if (Chance(global.spellData[sp, spellC.Accuracy])) {
		CreateSpellObject(damageToDeal);
	}
	// spell missed!
	else {
		var t = instance_create_layer(oCombatManager.turnControllerObject.nextTurn.x - 5,
								  oCombatManager.turnControllerObject.nextTurn.y - 10,
								  "PointsLayer", oText);
		t.text = "Missed!";
		oCombatManager.turnControllerObject.currentTurn.state = "usingItem";
	}
}	