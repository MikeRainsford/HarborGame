/// @description Set specific spell characteristic value
/// @param Characteristic
/// @param SpellData
/// @param SpellIndex
/// @param toSet

var characteristic	= argument0;
var dat				= argument1;
var ind				= argument2;
var set				= argument3;

if (characteristic == "spellName")
	dat[ind, 0] = set;
	
else if (characteristic == "spellID")
	dat[ind, 1] = set;
	
else if (characteristic == "spellType")
	dat[ind, 2] = set;
	
else if (characteristic == "spellInfo")
	dat[ind, 3] = set;
	
else if (characteristic == "damageLow")
	dat[ind, 4] = set;
	
else if (characteristic == "damageHigh")
	dat[ind, 5] = set;
	
else if (characteristic == "cursorWidth")
	dat[ind, 7] = set;
	
else if (characteristic == "cursorHeight")
	dat[ind, 8] = set;
	
else if (characteristic == "screenShakeSize")
	dat[ind, 10] = set;
	
else if (characteristic == "screenShakeTime1")
	dat[ind, 11] = set;
	
else if (characteristic == "pieceToChain")
	dat[ind, 12] = set;
	
else if (characteristic == "soundDelay")
	dat[ind, 14] = set;
	
else if (characteristic == "hasChargeSound")
	dat[ind, 15] = set;
	
else if (characteristic == "stationary")
	dat[ind, 16] = set;
	
else if (characteristic == "travelSpeed")
	dat[ind, 17] = set;
	
else if (characteristic == "screenFlashSize")
	dat[ind, 18] = set;
	
else if (characteristic == "elementType")
	dat[ind, 20] = set;
	
else if (characteristic == "moreInfo")
	dat[ind, 22] = set;
	
else if (characteristic == "orientation")
	dat[ind, 23] = set;
	
else if (characteristic == "canRotate")
	dat[ind, 24] = set;