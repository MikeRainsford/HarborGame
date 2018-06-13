/// @description Create spell object that will interact with enemy characters
//  Spell object will contain info about the amount of damage to deal and will be dealt upon collision

var d = argument0;

// Where to create the spell object
var t = oTurnController.previousTurn;
if (t == "oPlayer") {
	var caster		= oCombatPlayer;
	var ind	= global.spellBookIndex;
}
else if (t == "oPlayer2") {
	var caster		= oCombatPlayer2;
	var ind	= global.spellBook2Index;
}
else {
	var caster		= oCombatPlayer;
	var ind	= global.spellBookIndex;
}
var dat = global.spellData;

var target = caster.currentEnemy;

switch(SpellChar("spellID", dat, ind)) { // id
	case 0: // basic spell
		if (oPuzzleBoard.basicSpellSound == 1) { // basic fire
			var i = instance_create_layer(caster.x, caster.y - 6, "GameLayer", oSpellObject);
			i.damageToDeal = d;
		}
		else if (oPuzzleBoard.basicSpellSound == 2) { // basic water
			var i = instance_create_layer(target.x, target.y, "GameLayer", oSpellObject);
			i.damageToDeal = d;
		}
		else if (oPuzzleBoard.basicSpellSound == 3) { // basic leaf
			var i = instance_create_layer(target.x, target.y, "GameLayer", oSpellObject);
			i.damageToDeal = d;
		}
		else if (oPuzzleBoard.basicSpellSound == 4) { // basic bolt
			var i = instance_create_layer(caster.x, caster.y - 6, "GameLayer", oSpellObject);
			i.damageToDeal = d;
		}
		break;
		
	// ALl other non basic spells
	case 1: // fireball
		var i = instance_create_layer(caster.x + 4, caster.y - 6, "GameLayer", oSpellObject);
		i.damageToDeal = d;
		break;
	case 2: // elemental
		var i = instance_create_layer(caster.x + 4, caster.y - 6, "GameLayer", oSpellObject);
		i.damageToDeal = d;
		break;
	case 3: // bolt
		var i = instance_create_layer(caster.x + 4, caster.y - 6, "GameLayer", oSpellObject);
		i.damageToDeal = d;
		break;
	case 4: // sprout
		var i = instance_create_layer(caster.x, caster.y - 6, "GameLayer", oSpellObject);
		i.damageToDeal = d;
		break;
	case 5: // flood
		var i = instance_create_layer(64, room_height, "GameLayer", oSpellObject);
		i.damageToDeal = d;
		break;
	case 6: // brushfire
		var i = instance_create_layer(caster.x + 4, caster.y - 6, "GameLayer", oSpellObject);
		i.damageToDeal = d;
		break;
}
