UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Previous Player
if (oCombatManager.turnControllerObject.currentTeamPlayerIndex > 0) {
	oCombatManager.turnControllerObject.currentTeamPlayerIndex--;
}
else {
	oCombatManager.turnControllerObject.currentTeamTurn			= oCombatManager.turnControllerObject.previousTeamTurn;
	oCombatManager.turnControllerObject.currentTeamPlayerIndex	= ds_list_size(oCombatManager.turnControllerObject.currentTeamTurn) - 1;
	
	if (oCombatManager.turnControllerObject.currentTeamIndex > 0) {
		oCombatManager.turnControllerObject.currentTeamIndex--;
	}
	else {
		oCombatManager.turnControllerObject.currentTeamIndex = ds_list_size(oCombatManager.turnControllerObject.teams) - 1;
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Player States
oCombatManager.turnControllerObject.currentPlayerTurn.id.state = "waiting";
oCombatManager.turnControllerObject.previousPlayerTurn.id.state	= "applyEffect";

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Current Player, we need to update who the current player is
oCombatManager.turnControllerObject.currentPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, oCombatManager.turnControllerObject.currentTeamPlayerIndex);

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Reset Board State
oCombatManager.combatMenu.inSpellBook = true;
//oSpellBookUI.moreInfo = false;

UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();