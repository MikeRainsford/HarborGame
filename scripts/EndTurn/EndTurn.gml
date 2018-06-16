var t1 = oCombatManager.turnControllerObject.currentTurn;
var t2 = oCombatManager.turnControllerObject.nextTurn;

// Swap
oCombatManager.turnControllerObject.currentTurn = t2;
oCombatManager.turnControllerObject.nextTurn = t1;

// Set states
oCombatManager.turnControllerObject.currentTurn.state = "idle";
oCombatManager.turnControllerObject.nextTurn.state = "endTurn";

// Reset board state
oSpellBookUI.inSpellBook = true;
oSpellBookUI.moreInfo = false;