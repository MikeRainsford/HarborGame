// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Next Player In Line
// There Is Another Player In Line After Current Player
if ((oCombatManager.turnControllerObject.currentTeamIndex + 1) < ds_list_size(oCombatManager.turnControllerObject.currentTeamTurn)) {
	oCombatManager.turnControllerObject.nextPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, oCombatManager.turnControllerObject.currentTeamIndex + 1);
}
// Else, There Is Not Another Player In Line After Current Player
else {
	oCombatManager.turnControllerObject.nextPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.nextTeamTurn, 0);
}