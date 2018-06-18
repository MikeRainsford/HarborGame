// If player turn, player must be in idle state
if (oCombatManager.turnControllerObject.currentTurn.state == "idle") {
	UpdateDataReference();
	
	// Player turn
	if (oCombatManager.turnControllerObject.currentTurn == oPlayerCombat) {
		Input();
		// Check for matching spell configurations
		if (action1Pressed && !oSpellBookUI.inSpellBook){
			CheckSpellForms();
		}
		UpdateCursorPosition();
	}
	// Enemy turn
	else if (oCombatManager.turnControllerObject.currentTurn == oEnemyCombat) {
		// Reset everything
		oSpellBookUI.inSpellBook = true;
		
		GreedyEnemyAI();
		
		// End turn
		oCombatManager.turnControllerObject.currentTurn.state = "usingItem";
	}
}