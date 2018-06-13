/// @description Cycle through spell book when in spell book and arrow keys are pressed

Input();

var dat = global.spellData;
var ind = thisPlayerSpellBookIndex;

if (oPuzzleBoard.inSpellBook){ 
	if (thisPlayerTurn) {
		// Right arrow in spellBox pressed
		if (rightPressed){
			audio_play_sound(soSpellBookTurn, 0, 0);
			if (thisPlayerSpellBookIndex < array_height_2d(global.spellData) - 1)
				thisPlayerSpellBookIndex++;	
			else
				thisPlayerSpellBookIndex = 0;
		}
		
		// Left arrow in spellBox pressed
		if (leftPressed){
			audio_play_sound(soSpellBookTurn, 0, 0);
			if (thisPlayerSpellBookIndex > 0)
				thisPlayerSpellBookIndex--;	
			else
				thisPlayerSpellBookIndex = array_height_2d(global.spellData) - 1;
		}
		
		// Exit spell book
		if (upPressed) {
			audio_play_sound(soCursorSlideFree, 0, 0);
			oPuzzleBoard.inSpellBook = false;	
			
			if (SpellChar("orientation", dat, ind) == 0 || SpellChar("orientation", dat, ind) == 180)
				var cursorHeight = SpellChar("cursorHeight", dat, ind);
			else
				var cursorHeight = SpellChar("cursorWidth", dat, ind);
			
			global.gridIndexY = (oPuzzleBoard.gridHeight - 1) - cursorHeight + 2;
			global.gridIndexX = floor(oPuzzleBoard.gridWidth / 2);
		}
	}
}