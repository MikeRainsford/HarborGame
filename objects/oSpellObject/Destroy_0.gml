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

/*
// Create effect object
if (global.spellData[sp, spellC.HasLastingEffect]) {
	if (Chance(global.spellData[sp, spellC.EffectChance])) {
		switch(global.spellData[sp, spellC.EffectType]) {
			case 1:
				var i = instance_create_layer(oCombatManager.turnControllerObject.nextTurn.x,
											  oCombatManager.turnControllerObject.nextTurn.y,
											  "GameLayer", oFireEffect);
				i.depth = oCombatManager.turnControllerObject.nextTurn.depth - 1;
				i.owner = oCombatManager.turnControllerObject.nextTurn;
				ds_list_add(i.owner.status, "red");
			break;
			
			case 2:
				var i = instance_create_layer(oCombatManager.turnControllerObject.nextTurn.x,
											  oCombatManager.turnControllerObject.nextTurn.y,
											  "GameLayer", oWaterEffect);
				i.depth = oCombatManager.turnControllerObject.nextTurn.depth - 1;
				i.owner = oCombatManager.turnControllerObject.nextTurn;
				ds_list_add(i.owner.status, "blue");
			break;
			
			case 3:
				var i = instance_create_layer(oCombatManager.turnControllerObject.nextTurn.x,
											  oCombatManager.turnControllerObject.nextTurn.y,
											  "GameLayer", oGrassEffect);
				i.depth = oCombatManager.turnControllerObject.nextTurn.depth - 1;
				i.owner = oCombatManager.turnControllerObject.nextTurn;
				ds_list_add(i.owner.status, "green");
			break;
			
			case 4:
				var i = instance_create_layer(oCombatManager.turnControllerObject.nextTurn.x,
											  oCombatManager.turnControllerObject.nextTurn.y,
											  "GameLayer", oElectricEffect);
				i.depth = oCombatManager.turnControllerObject.nextTurn.depth - 1;
				i.owner = oCombatManager.turnControllerObject.nextTurn;
				ds_list_add(i.owner.status, "yellow");
			break;
		}
	}
}
*/