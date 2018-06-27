UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Previous Player
// Decrement oCombatManager Current Team Index
if (oCombatManager.turnControllerObject.currentTeamIndex > 0)
	oCombatManager.turnControllerObject.currentTeamIndex--;
else {
	oCombatManager.turnControllerObject.currentTeamTurn  = oCombatManager.turnControllerObject.previousTeamTurn;
	oCombatManager.turnControllerObject.currentTeamIndex = ds_list_size(oCombatManager.turnControllerObject.currentTeamTurn) - 1;
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Player States
oCombatManager.turnControllerObject.currentPlayerTurn.id.state = "waiting";
oCombatManager.turnControllerObject.previousPlayerTurn.id.state	= "applyEffect";

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Set Current Player
oCombatManager.turnControllerObject.currentPlayerTurn = ds_list_find_value(oCombatManager.turnControllerObject.currentTeamTurn, oCombatManager.turnControllerObject.currentTeamIndex);
	
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Reset Board State
oSpellBookUI.inSpellBook = true;
oSpellBookUI.moreInfo = false;

UpdateTeamOrder();
UpdateNextPlayerInLine();
UpdatePreviousPlayerInLine();