/// @description Deal Damage
oCombatManager.turnControllerObject.nextTurn.currentHealth -= oPuzzleBoard.damageToDeal;

var t = instance_create_layer(oCombatManager.turnControllerObject.nextTurn.x,
							  oCombatManager.turnControllerObject.nextTurn.y - 10,
							  "PointsLayer", oPoints);
t.pointValue = oPuzzleBoard.damageToDeal * -1;	

// Transition out of attack state to use item state
oCombatManager.turnControllerObject.currentTurn.state = "usingItem";

// Reset damage
oPuzzleBoard.damageToDeal = 0;