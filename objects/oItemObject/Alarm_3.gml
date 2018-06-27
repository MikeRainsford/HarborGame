/// @description Potion Item

if (oCombatManager.turnControllerObject.currentPlayerTurn.state != "usingItem") {
	alarm[3] = 1;
}
else {
	moveToPlayer = true;
}