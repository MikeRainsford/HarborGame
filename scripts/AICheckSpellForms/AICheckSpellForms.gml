/// @description Check if current elements under the cursor match a spell configuration

var coords  = [[]]; // xy grid positions of pieces to delete
var g       = global.grid;
var cursorX = global.gridIndexX;
var cursorY = global.gridIndexY;
var cast    = false;
var pass	= true;
var c;

var ind = oCombatManager.turnControllerObject.currentPlayerTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentPlayerTurn.spellBook.data[ind];
	
// Check Spells
switch(global.spellData[sp, spellC.SpellID]){
	// Single
	case 0: 
		coords = [
			[cursorX, cursorY]
		];
			
		// Check for basic or item
		cast = true;
		for (var i = 0; i < array_length_2d(coords, 0); i++){
			c = coords[0, i];
			if (IsItem(c[0], c[1])) { // allow items
				cast = false;
			}
		}
	break;
			
	// Fireball
	case 1: 
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY + 2 < oPuzzleBoard.gridHeight) {
			coords = [
				[cursorX + 1, cursorY    ],
				[cursorX,     cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX + 2, cursorY + 1],
				[cursorX + 1, cursorY + 2],
			];

			// Check Spell: check for all fires
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 1) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}	
			
			// If Valid
			if (pass)
				cast = true;
		}
	break;
			
	// elemental
	case 2: 
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [
				[cursorX,     cursorY    ],
				[cursorX + 1, cursorY    ],
				[cursorX,     cursorY + 1],
				[cursorX + 1, cursorY + 1],
			];
				
			// Check Spell: check for one of each
			var red    = false;
			var blue   = false;
			var green  = false;
			var yellow = false;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) == 1 || IsItem(c[0], c[1])) // ignore items
					red = true;
				else if (ds_grid_get(g, c[0], c[1]) == 2 || IsItem(c[0], c[1])) // ignore items
					blue = true;
				else if (ds_grid_get(g, c[0], c[1]) == 3 || IsItem(c[0], c[1])) // ignore items
					green = true;
				else if (ds_grid_get(g, c[0], c[1]) == 4 || IsItem(c[0], c[1])) // ignore items
					yellow = true;
			}
			
			// If Valid
			if (red && blue && green && yellow)
				cast = true;
		}
	break;
			
	// lightningBolt
	case 3: 
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [ // rotated 0 not flipped
				[cursorX,     cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX + 1, cursorY    ],
				[cursorX + 2, cursorY    ],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 2 < oPuzzleBoard.gridHeight) {	
			coords = [ // rotated 90 not flipped
				[cursorX,	  cursorY	 ],
				[cursorX,	  cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX + 1, cursorY + 2],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 90;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [ // rotated 180 not flipped
				[cursorX,     cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX + 1, cursorY    ],
				[cursorX + 2, cursorY    ],
			]; 
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 180;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 2 < oPuzzleBoard.gridHeight) {
			coords = [ // rotate 270 not flipped
				[cursorX,	  cursorY	 ],
				[cursorX,	  cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX + 1, cursorY + 2],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 270;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [ // rotated 0 and flipped
				[cursorX,     cursorY],
				[cursorX + 1, cursorY + 1],
				[cursorX + 1, cursorY    ],
				[cursorX + 2, cursorY + 1],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = -1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 2 < oPuzzleBoard.gridHeight) {
			coords = [ // rotated 90 and flipped
				[cursorX + 1, cursorY	 ],
				[cursorX,	  cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX,	  cursorY + 2],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 90;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = -1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [ // rotated 180 and flipped
				[cursorX,     cursorY	 ],
				[cursorX + 1, cursorY	 ],
				[cursorX + 1, cursorY + 1],
				[cursorX + 2, cursorY + 1],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 180;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = -1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 2 < oPuzzleBoard.gridHeight) {
			coords = [ // rotate 270 and flipped
				[cursorX + 1, cursorY	 ],
				[cursorX,	  cursorY + 1],
				[cursorX + 1, cursorY + 1],
				[cursorX,     cursorY + 2],
			];
		
			// Check Spell: check for all electric
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 4) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 270;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = -1;
				cast = true;
			}
		}
	break;
			
	// sprout
	case 4:
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [
				[cursorX,     cursorY],
				[cursorX + 2, cursorY],
				[cursorX + 1, cursorY + 1],
			];
			
			// Check Spell: check for all grass
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 3) {
					if (IsItem(c[0], c[1])) // allow items
						continue; // if item, continue to check next iteration
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
	break;
		
	// tsunami
	case 5:
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			// Coords: Flip = 1
			coords = [
				[cursorX,	  cursorY],
				[cursorX + 1, cursorY],
				[cursorX,	  cursorY + 1]
			];
		
			// Check Spell: check for all waters with 1 flip
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 2) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
		
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
			
		// - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX + 1 < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			// Coords: Flip = -1
			coords = [
				[cursorX,	  cursorY],
				[cursorX + 1, cursorY],
				[cursorX + 1, cursorY + 1]
			];
			
			// Check Spell: check for all waters with -1 flip
			pass = true;
			for (var i = 0; i < array_length_2d(coords, 0); i++){
				c = coords[0, i];
				if (ds_grid_get(g, c[0], c[1]) != 2) {
					if (IsItem(c[0], c[1])) // allow items
						continue;
					else
						pass = false;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = -1;
				cast = true;
			}
		}
	break;
		
	// brushfire
	case 6:
		// Make sure we dont check out of bounds
		if (cursorX + 2 < oPuzzleBoard.gridWidth && cursorY < oPuzzleBoard.gridHeight) {
			coords = [ // Coords Rotated: 0 || 180
				[cursorX,	  cursorY],
				[cursorX + 1, cursorY],
				[cursorX + 2, cursorY]
			];
		
			// Check Spell: check for fire grass fire
			pass = false;
			c = coords[0, 0];
			if (ds_grid_get(g, c[0], c[1]) == 1 || IsItem(c[0], c[1])) { // ignore items
				c = coords[0, 1];
				if (ds_grid_get(g, c[0], c[1]) == 3 || IsItem(c[0], c[1])) { // ignore items
					c = coords[0, 2];
					if (ds_grid_get(g, c[0], c[1]) == 1 || IsItem(c[0], c[1])) { // ignore items
						pass = true;
					}
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
		// - - - - - - - - - - - - - - - - - - - - -
		// Make sure we dont check out of bounds
		if (cursorX < oPuzzleBoard.gridWidth && cursorY + 2 < oPuzzleBoard.gridHeight) {
			coords = [ // Coords Rotated: 90 || 270
				[cursorX, cursorY    ],
				[cursorX, cursorY + 1],
				[cursorX, cursorY + 2]
			];
		
			// Check Spell: check for fire grass fire
			pass = false;
			c = coords[0, 0];
			if (ds_grid_get(g, c[0], c[1]) == 1 || IsItem(c[0], c[1])) { // ignore items
				c = coords[0, 1];
				if (ds_grid_get(g, c[0], c[1]) == 3 || IsItem(c[0], c[1])) { // ignore items
					c = coords[0, 2];
					if (ds_grid_get(g, c[0], c[1]) == 1 || IsItem(c[0], c[1])) { // ignore items
						pass = true;
					}
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 90;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
	break;
		
	// thunderstorm
	case 7:
		// Make sure we dont check out of bounds
		if (cursorX < oPuzzleBoard.gridWidth && cursorY + 1 < oPuzzleBoard.gridHeight) {
			coords = [
				[cursorX,	  cursorY],
				[cursorX, cursorY + 1],
			];
			
			// Check Spell: check for fire grass fire
			pass = false;
			c = coords[0, 0];
			if (ds_grid_get(g, c[0], c[1]) == 4 || IsItem(c[0], c[1])) { // ignore items
				c = coords[0, 1];
				if (ds_grid_get(g, c[0], c[1]) == 2 || IsItem(c[0], c[1])) { // ignore items
					pass = true;
				}
			}
			
			//If Valid
			if (pass) {
				oCombatManager.turnControllerObject.currentPlayerTurn.spellRot  = 0;
				oCombatManager.turnControllerObject.currentPlayerTurn.spellFlip = 1;
				cast = true;
			}
		}
	break;
}
	
//-----------------------------------------
if (cast) {
	return (global.spellData[sp, spellC.SpellID]);	
}
else {
	return -1;
}