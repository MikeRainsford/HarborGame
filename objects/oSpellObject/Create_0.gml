damageToDeal = 0;

if (oTurnController.previousTurn == "oPlayer") {
	image_xscale = 1;
	dat	= global.spellData;
	ind	= global.spellBookIndex;
}
else if (oTurnController.previousTurn == "oEnemy") {
	image_xscale = -1;
	//dat = global.spellData;
	//ind = global.spellBookIndex;
}
else if (oTurnController.previousTurn == "oPlayer2") {
	image_xscale = -1;
	dat	= global.spellData;
	ind	= global.spellBook2Index;
}

// Set Sprite
if (SpellChar("spellID", dat, ind) == 0) {
	if (oPuzzleBoard.basicSpellSound == 1) { // basic fire
		sprite_index = sFireBasicAnimation;
	}
	else if (oPuzzleBoard.basicSpellSound == 2) { // basic water
		sprite_index = sWaterBasicAnimation;
	}
	else if (oPuzzleBoard.basicSpellSound == 3) { // basic leaf
		sprite_index = sLeafBasicAnimation;
	}
	else if (oPuzzleBoard.basicSpellSound == 4) { // basic bolt
		sprite_index = sBoltBasicAnimation;
	}
}
else 
	sprite_index = asset_get_index("s" + string(SpellChar("spellName", dat, ind)) + "Animation");
image_index = 0;
image_speed = 1.0;

// Spell Sound
// Check for chargesound
if (SpellChar("hasChargeSound", dat, ind)) {
	var s = asset_get_index("so" + string(SpellChar("spellID", dat, ind)) + "Charge");
	audio_play_sound(s, 0, 0);
}
// Set Sound Delay to sync spell sound with animation
alarm[0] = SpellChar("soundDelay", dat, ind);