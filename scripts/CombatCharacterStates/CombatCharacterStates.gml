// Character Combat states
if (state == "idle") {
	// Reset knockback
	x = combatZone.x;
	playedHurtSound = false;
}
else if (state == "chargingSpell") {
	// Move into attacking state
	if (instance_exists(oSpellObject))
		state = "attacking";
}
else if (state == "hurt") {
	if (alarm[0] == -1) {
		// Set cooldown reset timer
		alarm[0] = 20;
	
		// Asthetic
		if (!playedHurtSound) {
			audio_play_sound(soHurt, 0, 0);
			ShakeScreen(oPuzzleBoard.defaultScreenShake, oPuzzleBoard.defaultScreenShake);
			ScreenFlash(oPuzzleBoard.defaultScreenFlash);
			playedHurtSound = true;
		}
		
		// Character knockback
		x += (4 * -image_xscale);
	}
}
else if (state == "attacking") {
	// Transition out of attacking into using item
	if (alarm[0] == -1)
		alarm[0] = 30;
}
else if (state == "usingItem") {
	// Transition out of using item into EndTurn()
	if (alarm[0] == -1)
		alarm[0] = 30;
}
else if (state == "waiting") {
	// Set getting hurt
	if (instance_exists(oSpellObject) && place_meeting(id.x, id.y, oSpellObject) && oSpellObject.image_xscale != id.image_xscale)
		state = "hurt";
		
	// Reset knockback
	x = combatZone.x;
}
else if (state == "endTurn") {
	state = "waiting";
}
else if (state == "dead") {
	
}