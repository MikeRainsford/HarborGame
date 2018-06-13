/// @description Remove Item When Not Casting A Spell

var dat = thisPlayerSpellData;
var ind = thisPlayerSpellBookIndex;

// Set piece to white by adding +10 to their value
for (var i = 0; i < ds_grid_width(global.grid); i++) {
	for (var j = 0; j < ds_grid_height(global.grid); j++) {
		if (ds_grid_get(global.grid, i, j) < 20 && ds_grid_get(global.grid, i, j) >= 10)
			ds_grid_set(global.grid, i, j, ds_grid_get(global.grid, i, j) + 10);
	}
}

// Delete Pieces
global.attacking = true;
TransitionTurn(thisPlayerTransitionTurn);
ShakeScreen(SpellChar("screenShakeSize", dat, ind), SpellChar("screenShakeTime", dat, ind));
ScreenFlash(SpellChar("screenFlashSize", dat, ind));
PuzzlePieceSound();
alarm[9] = animationLength;
oPuzzleBoard.image_index = 0;