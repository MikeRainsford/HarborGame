/// @description Chain Delete

var dat = thisPlayerSpellData;
var ind = thisPlayerSpellBookIndex;

// Delete main body pieces
for (var i = 0; i < ds_grid_width(global.grid); i++) {
	for (var j = 0; j < ds_grid_height(global.grid); j++) {
		if (ds_grid_get(global.grid, i, j) >= 10) {
			// Delete piece
			ds_grid_set(global.grid, i, j, 0);
		}
	}
}

postChainCount = CountPiece(SpellChar("pieceToChain", dat, ind));
damageToDeal  += CalculateSpellDamage();
damageToDeal  += (preChainCount - postChainCount);

alarm[5] = emptyPieceLength;

// Spawn Spell
CreateSpellObject(damageToDeal);