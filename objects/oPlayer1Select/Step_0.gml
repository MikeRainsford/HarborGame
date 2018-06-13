if (!ready) {
	if (keyboard_check_pressed(ord("D"))) {
		audio_play_sound(soSpellBookTurn, 0, 0);
		if (skinIndex < array_length_1d(playerSkins) - 1)
			skinIndex++;		
		else
			skinIndex = 0;
	}

	if (keyboard_check_pressed(ord("A"))) {
		audio_play_sound(soSpellBookTurn, 0, 0);
		if (skinIndex > 0)
			skinIndex--;		
		else
			skinIndex = array_length_1d(playerSkins) - 1;
	}
}

if (keyboard_check_pressed(ord("J")) || keyboard_check_pressed(ord("K"))) {
	if (!ready)
		audio_play_sound(soCharacterSelect, 0, false);
	ready = !ready;
}

sprite_index = asset_get_index(playerSkins[skinIndex] + "Idle");

if (skinIndex != 0 && playerSkins[skinIndex] != "sFrog") {
	image_xscale = 1;
	image_yscale = 1;
}
else {
	image_xscale = 3.0;
	image_yscale = 3.0;
}