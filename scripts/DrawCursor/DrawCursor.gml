/// @description Draw cursor on puzzle board that is used to select spells

var xo = room_width / 2 - 44;	// x offset, this is adjusted to the board
var yo = 7;						// y offset, this is adjusted to the board

if (oTurnController.playerTurn) {
	var dat = global.spellData;
	var ind = global.spellBookIndex;
	
	// Define cursor width and height
	if (SpellChar("orientation", dat, ind) == 0 || abs(SpellChar("orientation", dat, ind)) == 180) {
		var cursorWidth  = SpellChar("cursorWidth", dat, ind);
		var cursorHeight = SpellChar("cursorHeight", dat, ind);
	}
	// Define cursor width and height
	else {
		var cursorWidth  = SpellChar("cursorHeight", dat, ind);
		var cursorHeight = SpellChar("cursorWidth", dat, ind);
	}
	var cursorSprite = asset_get_index("s" + string(SpellChar("spellName", dat, ind)) + "Cursor");
	
	// Spell rotated 0
	if (SpellChar("orientation", dat, ind) == 0) {
		var rot   = 0;
		var rxoff = 0;
		var ryoff = 0;
	}
	// Spell rotated 90
	else if (SpellChar("orientation", dat, ind) == 90) {
		var rot   = SpellChar("orientation", dat, ind);
		var rxoff = 0;	
		var ryoff = (cursorHeight * oPuzzleBoard.gridPadding) + 2;
}
	// Spell rotated 180
	else if (SpellChar("orientation", dat, ind) == 180) {
		var rot   = SpellChar("orientation", dat, ind);
		var rxoff = (cursorWidth * oPuzzleBoard.gridPadding) + 2;
		var ryoff = (cursorHeight * oPuzzleBoard.gridPadding) + 2;

	}
	// Spell rotated 270
	else if (SpellChar("orientation", dat, ind) == 270) {
		var rot   = SpellChar("orientation", dat, ind);
		var rxoff = (cursorWidth * oPuzzleBoard.gridPadding) + 2;
		var ryoff = 0;
	}
}
else if (oTurnController.player2Turn) {
	var dat = global.spellData;
	var ind = global.spellBook2Index;
	
	// Define cursor width and height
	if (SpellChar("orientation", dat, ind) == 0 || abs(SpellChar("orientation", dat, ind)) == 180) {
		var cursorWidth  = SpellChar("cursorWidth", dat, ind);
		var cursorHeight = SpellChar("cursorHeight", dat, ind);
	}
	// Define cursor width and height
	else {
		var cursorWidth  = SpellChar("cursorHeight", dat, ind);
		var cursorHeight = SpellChar("cursorWidth", dat, ind);
	}
	var cursorSprite = asset_get_index("s" + string(SpellChar("spellName", dat, ind)) + "Cursor");
	
	// Spell rotated 0
	if (SpellChar("orientation", dat, ind) == 0) {
		var rot   = 0;
		var rxoff = 0;
		var ryoff = 0;
	}
	// Spell rotated 90
	else if (SpellChar("orientation", dat, ind) == 90) {
		var rot   = SpellChar("orientation", dat, ind);
		var rxoff = 0;	
		var ryoff = (cursorHeight * oPuzzleBoard.gridPadding) + 2;
}
	// Spell rotated 180
	else if (SpellChar("orientation", dat, ind) == 180) {
		var rot   = SpellChar("orientation", dat, ind);
		var rxoff = (cursorWidth * oPuzzleBoard.gridPadding) + 2;
		var ryoff = (cursorHeight * oPuzzleBoard.gridPadding) + 2;

	}
	// Spell rotated 270
	else if (SpellChar("orientation", dat, ind) == 270) {
		var rot   = SpellChar("orientation", dat, ind);
		var rxoff = (cursorWidth * oPuzzleBoard.gridPadding) + 2;
		var ryoff = 0;
	}
}

// If cursor is visible, draw it with the above defined characteristics
if (!oPuzzleBoard.inSpellBook && (oTurnController.playerTurn || oTurnController.player2Turn)) {	
	draw_sprite_ext(cursorSprite, 0,((global.gridIndexX + cursorWidth  - (1 * cursorWidth))  * oPuzzleBoard.gridPadding) + xo + rxoff,
									((global.gridIndexY + cursorHeight - (1 * cursorHeight)) * oPuzzleBoard.gridPadding) + yo + ryoff,
									1, 1, rot, c_white, 1);
}