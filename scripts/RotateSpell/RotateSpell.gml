/// @description Rotate spell when in spell book only if specific spell allows for rotation

Input();

var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];

// Check turn and if in spell book
if (oSpellBookUI.inSpellBook) {
	// Rotate right
	if (rotateRight && global.spellData[sp, spellC.CanRotate]) {		
		switch(global.spellData[sp, spellC.Orientation]) {
			case 0:
				global.spellData[sp, spellC.Orientation] = 270;
			break;
			case 90:
				global.spellData[sp, spellC.Orientation] = 0;
			break;
			case 180:
				global.spellData[sp, spellC.Orientation] = 90;
			break;
			case 270:
				global.spellData[sp, spellC.Orientation] = 180;
			break;
		}
	}
	// Rotate left
	if (rotateLeft && global.spellData[sp, spellC.Orientation]) {
		global.spellData[sp, spellC.Orientation] += 90;
		
		// Reset 360 value to 0
		if (global.spellData[sp, spellC.Orientation] mod 360 == 0)
			global.spellData[sp, spellC.Orientation] = 0;
	}
}