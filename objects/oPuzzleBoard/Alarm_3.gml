/// @description Chain

// Element animation image_index start at 0
image_index = 0;

if (waveCounter > 0) {
	for (var i = 0; i < oPuzzleBoard.gridWidth; i++) {
		for (var j = 0; j < oPuzzleBoard.gridHeight; j++) {
			// - - -Check for chain and type matching- - -
			// piece to chain and type match
			if (global.spellData[sp, spellC.PieceToChain] == global.spellData[sp, spellC.SpellType]) {
				if (ds_grid_get(global.pGrid, i, j) == chainCounter) {
					ds_grid_set(global.grid,  i, j, ds_grid_get(global.grid, i, j) + 20);
			
					// Create Chain Sign
					if (!instance_exists(oChainSign)) {
						CreateChainSign((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + 8 + random_range(-5, 5),
										(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + 8 + random_range(-5, 5));
						audio_play_sound(soChain, 0, 0);
							
						// Spawn score point
						var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
														(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
														"PointsLayer", oPoints);	
						p.pointValue = 1;
					}
				}
			}
			// piece to chain and type dont match
			else {
				if (ds_grid_get(global.pGrid, i, j) == chainCounter) {
					ds_grid_set(global.grid, i, j, global.spellData[sp, spellC.SpellType] + 20);
				
					// Create Chain Sign
					if (!instance_exists(oChainSign)) {
						CreateChainSign((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + 8 + random_range(-5, 5),
										(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + 8 + random_range(-5, 5));
						audio_play_sound(soChain, 0, 0);
							
						// Spawn score point
						var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
														(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
														"PointsLayer", oPoints);	
						p.pointValue = 1;
					}
				}
			}
		}
	}
	chainCounter++;
	waveCounter--;
	
	// If wave has happened
	if (waveCounter > 0) {
		ShakeScreen(defaultScreenShake, defaultScreenShake);
		PuzzlePieceSound();
		ScreenFlash(defaultScreenFlash);
	}
	// Trigger the next event in the chain
	alarm[3] = chainSpaceLength;
}
else {
	// Trigger the next event in the chain
	alarm[4] = emptyPieceLength;
}
// Trigger the next event in the chain
alarm[6] = chainSpaceLength;