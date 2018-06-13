/// @description Chain

var dat = thisPlayerSpellData;
var ind = thisPlayerSpellBookIndex;

image_index = 0;

if (waveCounter > 0) {
	for (var i = 0; i < oPuzzleBoard.gridWidth; i++) {
		for (var j = 0; j < oPuzzleBoard.gridHeight; j++) {
			// - - -Check for chain and type matching- - -
			if (SpellChar("pieceToChain", dat, ind) == -1 || SpellChar("spellType", dat, ind) == -1) {
				if (ds_grid_get(global.pGrid, i, j) == chainCounter) {
					ds_grid_set(global.grid,  i, j, ds_grid_get(global.grid, i, j) + 20);
					
					// Chain Sign
					if (!instance_exists(oChainSign)) {
						CreateChainSign((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + 8 + random_range(-5, 5),
										(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + 8 + random_range(-5, 5));
						audio_play_sound(soChain, 0, 0);
						
						// Spawn score point
						var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
													  (j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
													  "PointsLayer", oText);	
						p.pointValue = 1;
					}
				}
			}
			else {
				// piece to chain and type match
				if (SpellChar("pieceToChain", dat, ind) == SpellChar("spellType", dat, ind)) {
					if (ds_grid_get(global.pGrid, i, j) == chainCounter) {
						ds_grid_set(global.grid,  i, j, ds_grid_get(global.grid, i, j) + 20);
							
						// Chain Sign
						if (!instance_exists(oChainSign)) {
							CreateChainSign((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + 8 + random_range(-5, 5),
											(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + 8 + random_range(-5, 5));
							audio_play_sound(soChain, 0, 0);
							
							// Spawn score point
							var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
														  (j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
														  "PointsLayer", oText);	
							p.pointValue = 1;
						}
					}
				}
				// piece to chain and type dont match
				else {
					if (ds_grid_get(global.pGrid, i, j) == chainCounter) {
						ds_grid_set(global.grid, i, j, SpellChar("spellType", dat, ind) + 20);
					
						// Chain Sign
						if (!instance_exists(oChainSign)) {
							CreateChainSign((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + 8 + random_range(-5, 5),
											(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + 8 + random_range(-5, 5));
							audio_play_sound(soChain, 0, 0);
							// Spawn score point
							var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
														  (j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
														  "PointsLayer", oText);	
							p.pointValue = 1;
						}
					}
				}
			}
		}
	}
	chainCounter++;
	waveCounter--;
	
	if (waveCounter > 0) {
		ShakeScreen(defaultScreenShake, defaultScreenShake);
		PuzzlePieceSound();
		ScreenFlash(defaultScreenFlash);
	}
	alarm[3] = chainSpaceLength;
}
else 
	alarm[4] = emptyPieceLength;
alarm[6] = chainSpaceLength;