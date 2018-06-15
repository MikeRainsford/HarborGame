/// @description Chain Delete

// Delete main body pieces
for (var i = 0; i < oPuzzleBoard.gridWidth; i++) {
	for (var j = 0; j < oPuzzleBoard.gridHeight; j++) {
		if (ds_grid_get(global.grid, i, j) >= 10)
			ds_grid_set(global.grid, i, j, 0);
	}
}

postChainCount = CountPiece(global.spellData[sp, spellC.PieceToChain]);
damageToDeal  += CalculateSpellDamage();
damageToDeal  += (preChainCount - postChainCount);

// Trigger the next event in the chain
alarm[5] = emptyPieceLength;

// Spawn Spell
CreateSpellObject(damageToDeal);