/// @description Spell sound

// Basic spell only
if (SpellChar("spellName", dat, ind) == "Basic") {
	switch(oPuzzleBoard.basicSpellSound) {
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
	}
}
// all other spells
else {
	var s = asset_get_index("so" + string(SpellChar("spellName", dat, ind)) + "Spell");
	audio_play_sound(s, 0, 0);
}