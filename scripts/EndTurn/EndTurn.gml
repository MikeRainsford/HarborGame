// Set states
oCombatManager.turnControllerObject.currentTurn.state = "endTurn";
oCombatManager.turnControllerObject.nextTurn.state = "applyEffect";

var t1 = oCombatManager.turnControllerObject.currentTurn;
var t2 = oCombatManager.turnControllerObject.nextTurn;

// Swap
oCombatManager.turnControllerObject.currentTurn = t2;
oCombatManager.turnControllerObject.nextTurn = t1;

// Reset board state
oSpellBookUI.inSpellBook = true;
oSpellBookUI.moreInfo = false;