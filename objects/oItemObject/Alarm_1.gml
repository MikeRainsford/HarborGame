/// @description Shuffle Item

if (oCombatManager.turnControllerObject.currentTurn.state != "usingItem") {
	alarm[1] = 1;
}
else {
	instance_destroy();
}