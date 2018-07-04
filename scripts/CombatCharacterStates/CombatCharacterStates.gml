// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Character Combat states

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// ApplyEffect
if (state == "applyEffect") {
	if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id) {
		state = "idle";
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Idle
else if (state == "idle") {
	if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id) {
		// Reset knockback
		x = startingX;
		playedHurtSound = false;
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Charging Spell
else if (state == "chargingSpell") {
	if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id) {
		// Move into attacking state
		if (instance_exists(oSpellObject) && oSpellObject.owner == id)
			state = "attacking";
	}
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
	if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id) {
		// Transition out of attacking into using item
		if (alarm[0] == -1)
			alarm[0] = 30;
	}
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
	x = startingX;
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