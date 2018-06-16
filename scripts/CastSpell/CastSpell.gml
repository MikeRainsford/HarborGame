var coords = argument0;

// Set player to attacking
oCombatManager.turnControllerObject.currentTurn.state = "chargingSpell";	

var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];

// Store basic spell sound
if (global.spellData[sp, spellC.SpellID] == 0)
	oPuzzleBoard.basicSpellSound = ds_grid_get(global.grid, global.gridIndexX, global.gridIndexY);
	
// Reset cursor position
oSpellBookUI.inSpellBook = true;
oSpellBookUI.moreInfo = false;

// Play spell selection
audio_play_sound(soSelectSpell, 0, 0);

// Animate Puzzle Piece
for (var i = 0; i < array_length_2d(coords, 0); i++) {
	var c = coords[0, i];
	if (ds_grid_get(global.grid, c[0], c[1]) < 10)
		ds_grid_set(global.grid, c[0], c[1], ds_grid_get(global.grid, c[0], c[1]) + 10);
}
			
// Start TurnParent alarm chain
if (alarm[0] == -1)
	alarm[0] = whitePieceLength;
			
// -----All Done In Alarm Event-----
// Deal Damage
// Delete Pieces
// RefillPieces