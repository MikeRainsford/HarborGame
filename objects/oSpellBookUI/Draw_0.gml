// If player turn, player must be in idle state
if (oCombatManager.turnControllerObject.currentTurn.state == "idle") {
	DrawSpellBook();
	
	// Player turn
	if (oCombatManager.turnControllerObject.currentTurn == oPlayerCombat) {
		DrawMoreInfo();
	}
	// Enemy turn
	else if (oCombatManager.turnControllerObject.currentTurn == oEnemyCombat) {
		
	}
}