// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Player Alarm[0]

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Hurt
if (state == "hurt") {
	state = "idle";
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Attacking
else if (state == "attacking") {
	if (oCombatManager.turnControllerObject.currentPlayerTurn == id) {
		if (instance_exists(oSpellObject) && oSpellObject.owner == id)
			alarm[0] = 1;
		else
			state = "usingItem";
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Using
else if (state == "usingItem") {
	if (instance_exists(oItemObject))
		alarm[0] = 1;
	else
		NextPlayer();			
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Dead 
else if (state == "dead") {
	
}