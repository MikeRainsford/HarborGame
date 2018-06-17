// If player turn, player must be in idle state
if (oCombatManager.turnControllerObject.currentTurn.state == "idle") {
	UpdateDataReference();
	CheckSpellForms();
	UpdateCursorPosition();
}