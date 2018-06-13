/// @description Hurt/Heal Per Turn

var t = oTurnController.previousTurn;
if (t == "oPlayer")
	var caster = oCombatPlayer;
//else if (t == "oEnemy")
	//var caster = oCombatEnemy;
else if (t == "oPlayer2")
	var caster = oCombatPlayer2;
	
if (instance_exists(caster))
	var target = caster.currentEnemy;

global.attacking = false;