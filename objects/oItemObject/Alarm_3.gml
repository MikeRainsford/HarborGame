/// @description Potion Item

if (oCombatManager.turnControllerObject.currentTurn.state != "usingItem") {
	alarm[3] = 1;
}
else {
	moveToPlayer = true;
}