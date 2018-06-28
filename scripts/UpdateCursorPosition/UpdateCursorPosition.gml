/// @description Update cursor position inside of the puzzle grid
Input();

var ind = oCombatManager.turnControllerObject.currentPlayerTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentPlayerTurn.spellBook.data[ind];

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Check for spell rotation
if (global.spellData[sp, spellC.Orientation] == 0 || abs(global.spellData[sp, spellC.Orientation]) == 180) {
	var cursorWidth  = global.spellData[sp, spellC.CursorWidth];
	var cursorHeight = global.spellData[sp, spellC.CursorHeight];
}
else {
	var cursorWidth  = global.spellData[sp, spellC.CursorHeight];
	var cursorHeight = global.spellData[sp, spellC.CursorWidth];
}

if (!oSpellBookUI.inSpellBook){ 
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
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
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
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
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
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
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Down arrow in grid pressed
	if (downPressed /*&& global.gridIndexY != oPuzzleBoard.gridHeight - cursorHeight*/){
		audio_play_sound(soCursorSlideFree, 0, 0);
		if (global.gridIndexY < oPuzzleBoard.gridHeight - cursorHeight) {
			global.gridIndexY++;	
		}
		else {
			global.gridIndexY = 0;	
		}
	}
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Enter spell book
	if (action2Pressed) {
		oSpellBookUI.inSpellBook = true;	
		oSpellBookUI.moreInfo = false;
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Exit spell book by pressing A
else {
	if (action1Pressed || upPressed) {
		audio_play_sound(soCursorSlideFree, 0, 0);
		oSpellBookUI.inSpellBook = false;	
			
		if (global.spellData[sp, spellC.Orientation] == 0 || global.spellData[sp, spellC.Orientation] == 180)
			var cursorHeight = global.spellData[sp, spellC.CursorHeight];
		else
			var cursorHeight = global.spellData[sp, spellC.CursorWidth];
			
		global.gridIndexY = oPuzzleBoard.gridHeight - cursorHeight;
		global.gridIndexX = floor(oPuzzleBoard.gridWidth / 2) - 1;
	}	
}