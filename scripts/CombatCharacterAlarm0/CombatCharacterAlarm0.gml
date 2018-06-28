// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Player Alarm[0]

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Hurt
if (state == "hurt") {
	if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id)
		state = "idle";
	else
		state = "waiting";
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Attacking
else if (state == "attacking") {
	if (instance_exists(oSpellObject))
		alarm[0] = 1;
	else
		state = "usingItem";
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