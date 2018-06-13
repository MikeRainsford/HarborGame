/// @description Return specific spell characteristic
/// @param Characteristic
/// @param SpellData
/// @param SpellIndex

var characteristic	= argument0;
var dat				= argument1;
var ind				= argument2;

if (characteristic == "spellName")
	return (dat[ind, 0]);
	
else if (characteristic == "spellID")
	return (dat[ind, 1]);
	
else if (characteristic == "spellType")
	return (dat[ind, 2]);
	
else if (characteristic == "spellInfo")
	return (dat[ind, 3]);
	
else if (characteristic == "damageLow")
	return (dat[ind, 4]);
	
else if (characteristic == "damageHigh")
	return (dat[ind, 5]);
	
else if (characteristic == "cursorWidth")
	return (dat[ind, 7]);
	
else if (characteristic == "cursorHeight")
	return (dat[ind, 8]);
	
else if (characteristic == "screenShakeSize")
	return (dat[ind, 10]);
	
else if (characteristic == "screenShakeTime")
	return (dat[ind, 11]);
	
else if (characteristic == "pieceToChain")
	return (dat[ind, 12]);
	
else if (characteristic == "soundDelay")
	return (dat[ind, 14]);
	
else if (characteristic == "hasChargeSound")
	return (dat[ind, 15]);
	
else if (characteristic == "stationary")
	return (dat[ind, 16]);
	
else if (characteristic == "travelSpeed")
	return (dat[ind, 17]);
	
else if (characteristic == "screenFlashSize")
	return (dat[ind, 18]);
	
else if (characteristic == "elementType")
	return (dat[ind, 20]);
	
else if (characteristic == "moreInfo")
	return (dat[ind, 22]);
	
else if (characteristic == "orientation")
	return (dat[ind, 23]);
	
else if (characteristic == "canRotate")
	return (dat[ind, 24]);