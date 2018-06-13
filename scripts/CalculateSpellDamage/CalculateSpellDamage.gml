/// @description Gather spell low and high damage and randomly compute a value between that range

var dat = global.spellData;
if (oTurnController.previousTurn == "oPlayer")
	var ind = global.spellBookIndex;
else if (oTurnController.previousTurn == "oPlayer2")
	var ind = global.spellBook2Index;

if (oTurnController.previousTurn == "oPlayer") {
	var l = SpellChar("damageLow", dat, ind);
	var h = SpellChar("damageHigh", dat, ind);
}
else {
	var l = SpellChar("damageLow", dat, ind);
	var h = SpellChar("damageHigh", dat, ind);
}

randomize();
var r = irandom_range(l, h);
return r;