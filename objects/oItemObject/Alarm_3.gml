/// @description Potion Item

// Check if item is in single 
if (oCombatManager.turnControllerObject.currentTurn.state == "endTurn" ||
	oCombatManager.turnControllerObject.currentTurn.state == "waiting") {
		moveToPlayer = true;	
}
// Item is part of larger spell
else {
	if (oCombatManager.turnControllerObject.currentTurn.state != "endTurn")
		alarm[3] = 1;
	else {
		moveToPlayer = true;
	}
}