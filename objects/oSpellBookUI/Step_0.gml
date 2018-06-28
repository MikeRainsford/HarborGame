// If player turn, player must be in idle state
if (oCombatManager.turnControllerObject.currentPlayerTurn.state == "idle") {
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Player turn
	if (oCombatManager.turnControllerObject.currentTeamTurn == oCombatManager.turnControllerObject.friendlies) {
		RotateSpell();
		FlipSpell();
	}
}