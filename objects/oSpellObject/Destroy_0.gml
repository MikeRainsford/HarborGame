/// @description Deal Damage
oCombatManager.turnControllerObject.nextTurn.currentHealth -= oPuzzleBoard.damageToDeal;

// Transition out of attack state to use item state
oCombatManager.turnControllerObject.currentTurn.state = "usingItem";

// Reset damage
oPuzzleBoard.damageToDeal = 0;