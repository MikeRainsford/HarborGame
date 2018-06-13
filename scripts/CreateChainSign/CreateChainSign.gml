/// @description Create chain sign above puzzle elements

var xx = argument0;				// x position where to create chain sign
var yy = argument1;				// y position where to create chain sign
var rr = random_range(-2, 2);	// x & y random offset for variability

if (oTurnController.previousTurn == "oPlayer")
	var ind = global.spellBookIndex;
else if (oTurnController.previousTurn == "oPlayer2")
	var ind = global.spellBook2Index;	
var dat = global.spellData;

// Set chain sign color
switch(dat[ind, 12]) {
	case 1:
		var p = instance_create_layer(xx - 4 + rr, yy - 4 + rr, "PointsLayer", oChainSign);
		p.sprite_index = sChainR;
	break;
	case 2:
		var p = instance_create_layer(xx - 4 + rr, yy - 4 + rr, "PointsLayer", oChainSign);
		p.sprite_index = sChainB;
	break;
	case 3:
		var p = instance_create_layer(xx - 4 + rr, yy - 4 + rr, "PointsLayer", oChainSign);
		p.sprite_index = sChainG;
	break;
	case 4:
		var p = instance_create_layer(xx - 4 + rr, yy - 4 + rr, "PointsLayer", oChainSign);
		p.sprite_index = sChainY;
	break;
}