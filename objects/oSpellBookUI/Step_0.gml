// If player turn, player must be in idle state
if (oCombatManager.turnControllerObject.currentTurn.state == "idle") {
	// Player turn
	if (oCombatManager.turnControllerObject.currentTurn == oPlayerCombat) {
		RotateSpell();
		FlipSpell();
	}
	// Enemy turn
	else if (oCombatManager.turnControllerObject.currentTurn == oEnemyCombat) {
		
	}
}