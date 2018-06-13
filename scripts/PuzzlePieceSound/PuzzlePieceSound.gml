/// @description Get the sound for the puzzle pieces when theyre selected

var p; // piece that is chaining

// Basic spell sound is calculated in CheckSpellForm script

// Point to spell data
if (oTurnController.previousTurn == "oPlayer")
	var ind = global.spellBookIndex;
else if (oTurnController.previousTurn == "oPlayer2")
	var ind = global.spellBook2Index;
var dat = global.spellData;

// If "piece to chain" == -1, get the sound for the piece that it is
if (dat[ind, 12] == -1) {
	p = ds_grid_get(global.grid, global.gridIndexX, global.gridIndexY) mod 10;
}
// If there is a chain piece, use that as the sound effect
else {
	// if piece to chain is same as spell type
	if (dat[ind, 12] == dat[ind, 2])
		p = dat[ind, 12];
	else
		p = dat[ind, 2];
}

switch(p) {
	case 1: //fire
		audio_play_sound(soFireBurn, 0, 0);
	break;
	case 2: // water
		audio_play_sound(soWaterSplash, 0, 0);
	break;
	case 3: // leaf
		audio_play_sound(soLeafBury, 0, 0);
	break;
	case 4: // bolt
		audio_play_sound(soBoltStrike, 0, 0);
	break;
	case 5: // potion item
		audio_play_sound(soBoltStrike, 0, 0);
	break;
}