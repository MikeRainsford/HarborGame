// Check to see if everyone has attacked
var hasAttacked = 0;
var teamSize = ds_list_size(oCombatManager.turnControllerObject.currentTeamTurn);
for (var i = 0; i < teamSize; i++) {
	var t = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, i);
	
	if(t.attackedThisTurn)
		hasAttacked++;
}

if (hasAttacked == teamSize) {
	NextTeam();	
}
else {
	UpdateTeamOrder();
	UpdateNextPlayerInLine();
	UpdatePreviousPlayerInLine();

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Set Player States
	oCombatManager.turnControllerObject.currentPlayerTurn.id.state = "waiting";
	oCombatManager.turnControllerObject.previousPlayerTurn.id.state	= "idle";

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Previous Player
	if (oCombatManager.turnControllerObject.currentTeamPlayerIndex > 0) {
		oCombatManager.turnControllerObject.currentTeamPlayerIndex--;
	}
	else {
		oCombatManager.turnControllerObject.currentTeamPlayerIndex	= ds_list_size(oCombatManager.turnControllerObject.currentTeamTurn) - 1;
	}

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Set Current Player, we need to update who the current player is
	oCombatManager.turnControllerObject.currentPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, oCombatManager.turnControllerObject.currentTeamPlayerIndex);

	if (!oPuzzleBoard.inCombatMenu) {
		oCombatManager.combatMenu.inSpellBook = true;	
	}

	UpdateTeamOrder();
	UpdateNextPlayerInLine();
	UpdatePreviousPlayerInLine();
}