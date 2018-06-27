// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Next Team In Line
if (oCombatManager.turnControllerObject.id.currentTeamTurn == oCombatManager.turnControllerObject.id.friendlies) {
	oCombatManager.turnControllerObject.nextTeamTurn	 = oCombatManager.turnControllerObject.enemies;
	oCombatManager.turnControllerObject.previousTeamTurn = oCombatManager.turnControllerObject.enemies;
}
else if (oCombatManager.turnControllerObject.id.currentTeamTurn == oCombatManager.turnControllerObject.id.enemies) {
	oCombatManager.turnControllerObject.nextTeamTurn	 = oCombatManager.turnControllerObject.friendlies;
	oCombatManager.turnControllerObject.previousTeamTurn = oCombatManager.turnControllerObject.friendlies;
}