// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// If it is a friendly turn
if (oCombatManager.turnControllerObject.currentPlayerTurn.team == "friendlies") {
	if (showCombatMenu) {
		DrawCombatMenu();
		DrawActionMenu();
		//DrawSpellBook();
		//DrawInventory();
	}
}