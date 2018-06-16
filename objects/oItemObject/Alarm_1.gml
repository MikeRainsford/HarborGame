/// @description Shuffle Item

// Check if item is in single 
if (oCombatManager.turnControllerObject.currentTurn.state == "endTurn" ||
	oCombatManager.turnControllerObject.currentTurn.state == "waiting") {
		instance_destroy();
}
// Item is part of larger spell
else {
	if (oCombatManager.turnControllerObject.currentTurn.state != "endTurn")
		alarm[1] = 1;
	else {
		instance_destroy();
	}
}