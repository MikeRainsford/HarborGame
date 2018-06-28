// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Character Combat states

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// ApplyEffect
if (state == "applyEffect") {
	state = "idle";
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Idle
else if (state == "idle") {
	// Reset knockback
	x = combatZone.x;
	playedHurtSound = false;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Charging Spell
else if (state == "chargingSpell") {
	// Move into attacking state
	if (instance_exists(oSpellObject))
		state = "attacking";
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Hurt
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

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Attacking
else if (state == "attacking") {
	// Transition out of attacking into using item
	if (alarm[0] == -1)
		alarm[0] = 30;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Using Item
else if (state == "usingItem") {
	// Transition out of using item into EndTurn()
	if (alarm[0] == -1)
		alarm[0] = 30;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Waiting
else if (state == "waiting") {
	// Set getting hurt
	if (instance_exists(oSpellObject) && place_meeting(id.x, id.y, oSpellObject) && oSpellObject.image_xscale != id.image_xscale)
		state = "hurt";
		
	// Reset knockback
	x = combatZone.x;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// End Turn
else if (state == "endTurn") {
	playedHurtSound = false;
	state = "waiting";
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Dead
else if (state == "dead") {
	
}