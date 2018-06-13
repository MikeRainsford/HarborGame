/// @description Update cursor position inside of the puzzle grid
Input();

var cursorWidth;  // current width of cursor
var cursorHeight; // current height of cursor
var dat = global.spellData;
var ind = thisPlayerSpellBookIndex;

// Check for spell rotation
if (thisPlayerTurn) {
	if (SpellChar("orientation", dat, ind) == 0 || abs(SpellChar("orientation", dat, ind)) == 180) {
		cursorWidth  = SpellChar("cursorWidth", dat, ind);
		cursorHeight = SpellChar("cursorHeight", dat, ind);
	}
	else {
		cursorWidth  = SpellChar("cursorHeight", dat, ind);
		cursorHeight = SpellChar("cursorWidth", dat, ind);
	}
}

// If cursor is inside of the grid
if (!oPuzzleBoard.inSpellBook){ 
	// Right arrow in grid pressed
	if (rightPressed){
		audio_play_sound(soCursorSlideFree, 0, 0);
		if (global.gridIndexX < oPuzzleBoard.gridWidth - cursorWidth) {
			global.gridIndexX++;	
		}
		else {
			global.gridIndexX = 0;	
		}
	}
	// Left arrow in grid pressed
	if (leftPressed){
		audio_play_sound(soCursorSlideFree, 0, 0);
		if (global.gridIndexX > 0) {
			global.gridIndexX--;	
		}
		else {
			global.gridIndexX = oPuzzleBoard.gridWidth - cursorWidth;	
		}
	}
	// Up arrow in grid pressed
	if (upPressed){
		audio_play_sound(soCursorSlideFree, 0, 0);
		if (global.gridIndexY > 0) {
			global.gridIndexY--;	
		}
		else {
			global.gridIndexY = oPuzzleBoard.gridHeight - cursorHeight;	
		}
	}
	// Down arrow in grid pressed
	if (downPressed && global.gridIndexY != oPuzzleBoard.gridHeight - cursorHeight){
		audio_play_sound(soCursorSlideFree, 0, 0);
		if (global.gridIndexY < oPuzzleBoard.gridHeight - cursorHeight) {
			global.gridIndexY++;	
		}
		else {
			global.gridIndexY = 0;	
		}
	}
	// Enter spell book
	else if (downPressed && global.gridIndexY == oPuzzleBoard.gridHeight - cursorHeight){
		oPuzzleBoard.inSpellBook = true;	
	}
}