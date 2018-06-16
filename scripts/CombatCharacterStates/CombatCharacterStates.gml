// Character Combat states
if (state == "idle") {
	// Set attacking state
	if (instance_exists(oSpellObject) && oSpellObject.image_xscale == self.image_xscale)
		state = "attacking";
		
	// Set getting hurt
	if (instance_exists(oSpellObject) &&
		place_meeting(x, y, oSpellObject) &&
		oSpellObject.image_xscale != self.image_xscale)
			state = "hurt";
}
else if (state == "hurt") {
	if (alarm[0] == -1) {
		// Set cooldown reset timer
		alarm[0] = 20;
	
		// Asthetic
		audio_play_sound(soHurt, 0, 0);
		ShakeScreen(oPuzzleBoard.defaultScreenShake, oPuzzleBoard.defaultScreenShake);
		ScreenFlash(oPuzzleBoard.defaultScreenFlash);
		
		// Character knockback
		x += (4 * -image_xscale);
	}
}
else if (state == "attacking") {
	// End attacking and reset to idle
	if (!instance_exists(oSpellObject))
		state = "waiting";
}
else if (state == "waiting") {
	
}