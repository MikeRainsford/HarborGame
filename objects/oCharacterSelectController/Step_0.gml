if (instance_exists(oPlayer1Select) && instance_exists(oPlayer2Select)) {
	if (oPlayer1Select.ready && oPlayer2Select.ready) {
		player1Skin = oPlayer1Select.playerSkins[oPlayer1Select.skinIndex];
		player2Skin = oPlayer2Select.playerSkins[oPlayer2Select.skinIndex];
		room_goto_next();
	}
	
	if (keyboard_check_pressed(ord("B"))) {
		room_goto(rMainMenu);	
		audio_stop_sound(mDialMaeve);
	}
}