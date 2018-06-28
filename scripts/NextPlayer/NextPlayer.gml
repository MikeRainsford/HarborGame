UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Next Player
if (oCombatManager.turnControllerObject.currentTeamPlayerIndex < ds_list_size(oCombatManager.turnControllerObject.currentTeamTurn) - 1) {
	oCombatManager.turnControllerObject.currentTeamPlayerIndex++;
}
else {
	oCombatManager.turnControllerObject.currentTeamTurn			= oCombatManager.turnControllerObject.nextTeamTurn;
	oCombatManager.turnControllerObject.currentTeamPlayerIndex	= 0;
	
	if (oCombatManager.turnControllerObject.currentTeamIndex < ds_list_size(oCombatManager.turnControllerObject.teams) - 1) {
		oCombatManager.turnControllerObject.currentTeamIndex++;
	}
	else {
		oCombatManager.turnControllerObject.currentTeamIndex = 0;
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Player States
oCombatManager.turnControllerObject.currentPlayerTurn.id.state  = "waiting";
oCombatManager.turnControllerObject.nextPlayerTurn.id.state = "applyEffect";

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Current Player, we need to update who the current player is
oCombatManager.turnControllerObject.currentPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, oCombatManager.turnControllerObject.currentTeamPlayerIndex);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Reset Board State
oSpellBookUI.inSpellBook = true;
oSpellBookUI.moreInfo	 = false;

UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();