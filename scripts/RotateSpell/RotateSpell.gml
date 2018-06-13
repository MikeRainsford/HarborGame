/// @description Rotate spell when in spell book only if specific spell allows for rotation

Input();

var dat = global.spellData;
var ind = thisPlayerSpellBookIndex;

// Check turn and if in spell book
if (thisPlayerTurn && oPuzzleBoard.inSpellBook) {
	// Rotate right
	if (rotateRight && SpellChar("canRotate", dat, ind)) {		
		switch(SpellChar("orientation", dat, ind)) {
			case 0:
				SetSpellChar("orientation", dat, ind, 270);
			break;
			case 90:
				SetSpellChar("orientation", dat, ind, 0);
			break;
			case 180:
				SetSpellChar("orientation", dat, ind, 90);
			break;
			case 270:
				SetSpellChar("orientation", dat, ind, 180);
			break;
		}
	}
	// Rotate left
	if (rotateLeft && SpellChar("canRotate", dat, ind)) {
		SetSpellChar("orientation", dat, ind, SpellChar("orientation", dat, ind) + 90);
		
		// Reset 360 value to 0
		if (SpellChar("orientation", dat, ind) mod 360 == 0)
			SetSpellChar("orientation", dat, ind, 0);	
	}
}