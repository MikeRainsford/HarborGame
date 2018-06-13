/// @description Animate
// Board Animations

var dat = thisPlayerSpellData;
var ind = thisPlayerSpellBookIndex;

// Set piece to white by adding +10 to their value
for (var i = 0; i < oPuzzleBoard.gridWidth; i++) {
	for (var j = 0; j < oPuzzleBoard.gridHeight; j++) {
		if (ds_grid_get(global.grid, i, j) < 20 && ds_grid_get(global.grid, i, j) >= 10)
			ds_grid_set(global.grid, i, j, ds_grid_get(global.grid, i, j) + 10);
	}
}

// Delete Pieces
global.attacking = true;
TransitionTurn(thisPlayerTransitionTurn);
// Check if the spell casting effects the player
HurtHealCharacter(oCombatPlayer, global.spellData[thisPlayerSpellBookIndex, 13]);
ShakeScreen(SpellChar("screenShakeSize", dat, ind), SpellChar("screenShakeTime", dat, ind));
ScreenFlash(SpellChar("screenFlashSize", dat, ind));
PuzzlePieceSound();
alarm[1] = animationLength;
oPuzzleBoard.image_index = 0;