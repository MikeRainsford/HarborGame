/// @description Draw cursor on puzzle board that is used to select spells

var xo = room_width / 2 - 44;	// x offset, this is adjusted to the board
var yo = 7;						// y offset, this is adjusted to the board

var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];
	
// Define cursor width and height
if (global.spellData[sp, spellC.Orientation] == 0 || abs(global.spellData[sp, spellC.Orientation]) == 180) {
	var cursorWidth  = global.spellData[sp, spellC.CursorWidth];
	var cursorHeight = global.spellData[sp, spellC.CursorHeight];
}
// Define cursor width and height
else {
	var cursorWidth  = global.spellData[sp, spellC.CursorHeight];
	var cursorHeight = global.spellData[sp, spellC.CursorWidth];
}
var cursorSprite = asset_get_index("s" + string(global.spellData[sp, spellC.SpellName]) + "Cursor");
	
// Spell rotated 0
if (global.spellData[sp, spellC.Orientation] == 0) {
	var rot   = 0;
	var rxoff = 0;
	var ryoff = 0;
}
// Spell rotated 90
else if (global.spellData[sp, spellC.Orientation] == 90) {
	var rot   = global.spellData[sp, spellC.Orientation];
	var rxoff = 0;	
	var ryoff = (cursorHeight * oPuzzleBoard.gridPadding) + 2;
}
// Spell rotated 180
else if (global.spellData[sp, spellC.Orientation] == 180) {
	var rot   = global.spellData[sp, spellC.Orientation];
	var rxoff = (cursorWidth * oPuzzleBoard.gridPadding) + 2;
	var ryoff = (cursorHeight * oPuzzleBoard.gridPadding) + 2;

}
// Spell rotated 270
else if (global.spellData[sp, spellC.Orientation] == 270) {
	var rot   = global.spellData[sp, spellC.Orientation];
	var rxoff = (cursorWidth * oPuzzleBoard.gridPadding) + 2;
	var ryoff = 0;
}

// If cursor is visible, draw it with the above defined characteristics
if (!oSpellBookUI.inSpellBook) {	
	draw_sprite_ext(cursorSprite, 0,((global.gridIndexX + cursorWidth  - (1 * cursorWidth))  * oPuzzleBoard.gridPadding) + xo + rxoff,
									((global.gridIndexY + cursorHeight - (1 * cursorHeight)) * oPuzzleBoard.gridPadding) + yo + ryoff,
									1, 1, rot, c_white, 1);
}