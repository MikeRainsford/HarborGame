/// @description Deal Damage
oCombatManager.turnControllerObject.nextTurn.currentHealth -= oPuzzleBoard.damageToDeal;	

// End Turn
EndTurn();

// Reset damage
oPuzzleBoard.damageToDeal = 0;