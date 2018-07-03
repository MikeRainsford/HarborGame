// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// If it is a friendly turn
if (oCombatManager.turnControllerObject.currentTeamTurn == oCombatManager.turnControllerObject.friendlies) {
	if (showCombatMenu) {
		FloatMenuBox();
		CombatMenuNavigation();
		ActionMenuNavigation();
		//CombatMenuSpellNavigation();
		//CombatMenuItemNavigation();
	}
}