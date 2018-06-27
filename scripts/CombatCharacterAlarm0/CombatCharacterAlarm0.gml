// Player states
if (state == "hurt") {
	if (oCombatManager.turnControllerObject.currentPlayerTurn.id == id)
		state = "idle";
	else
		state = "waiting";
}
else if (state == "attacking") {
	if (instance_exists(oSpellObject))
		alarm[0] = 1;
	else
		state = "usingItem";
}
else if (state == "usingItem") {
	if (instance_exists(oItemObject))
		alarm[0] = 1;
	else
		NextTurn();
			
}