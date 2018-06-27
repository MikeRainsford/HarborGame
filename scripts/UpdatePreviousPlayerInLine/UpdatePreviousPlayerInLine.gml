// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Previous Player In Line
// There Is Another Player In Line Before Current Player
if ((oCombatManager.turnControllerObject.currentTeamIndex - 1) > 0) {
	oCombatManager.turnControllerObject.previousPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, oCombatManager.turnControllerObject.currentTeamIndex - 1);
}
// Else, There Is Not Another Player In Line Before Current Player
else {
	oCombatManager.turnControllerObject.previousPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.previousTeamTurn, ds_list_size(oCombatManager.turnControllerObject.previousTeamTurn) - 1);
}