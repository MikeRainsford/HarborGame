// If player turn, player must be in idle state
if (oCombatManager.turnControllerObject.currentTurn.state == "idle") {
	UpdateDataReference();
	
	// Player turn- - - - -
	if (oCombatManager.turnControllerObject.currentTurn == oPlayerCombat) {
		// Check for matching spell configurations
		CheckSpellForms();
		UpdateCursorPosition();
	}
	// Enemy turn- - - - -
	else if (oCombatManager.turnControllerObject.currentTurn == oEnemyCombat) {		
		// Decide which AI script to use
		if (!oCombatManager.combatEnemyObject.searchedForSpell) {
			GreedyEnemyAI();
		}
	}
}