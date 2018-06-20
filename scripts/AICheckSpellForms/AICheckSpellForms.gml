/// @description Check if current elements under the cursor match a spell configuration
Input();

var coords  = [[]]; // xy grid positions of pieces to delete
var g       = global.grid;
var cursorX = global.gridIndexX;
var cursorY = global.gridIndexY;
var cast    = false;
var pass	= true;

var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];
	
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
			var c = coords[0, i];
			if (IsItem(c[0], c[1])) { // allow items
				cast = false;
			}
		}
	break;
			
	// Fireball
	case 1: 
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
			var c = coords[0, i];
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
	break;
			
	// elemental
	case 2: 
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
			var c = coords[0, i];
			if (ds_grid_get(g, c[0], c[1]) == 1 || IsItem(c[0], c[1])) // ignore items
				red = true;
			if (ds_grid_get(g, c[0], c[1]) == 2 || IsItem(c[0], c[1])) // ignore items
				blue = true;
			if (ds_grid_get(g, c[0], c[1]) == 3 || IsItem(c[0], c[1])) // ignore items
				green = true;
			if (ds_grid_get(g, c[0], c[1]) == 4 || IsItem(c[0], c[1])) // ignore items
				yellow = true;
		}
			
		// If Valid
		if (red && blue && green && yellow)
			cast = true;
	break;
			
	// lightningBolt
	case 3: 
		var c;
		// Check rotation Orientation
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
			oCombatManager.combatEnemyObject.spellRot  = 0;
			oCombatManager.combatEnemyObject.spellFlip = 1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
					
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
			oCombatManager.combatEnemyObject.spellRot  = 90;
			oCombatManager.combatEnemyObject.spellFlip = 1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
					
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
			oCombatManager.combatEnemyObject.spellRot  = 180;
			oCombatManager.combatEnemyObject.spellFlip = 1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		
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
			oCombatManager.combatEnemyObject.spellRot  = 270;
			oCombatManager.combatEnemyObject.spellFlip = 1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		
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
			oCombatManager.combatEnemyObject.spellRot  = 0;
			oCombatManager.combatEnemyObject.spellFlip = -1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		
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
			oCombatManager.combatEnemyObject.spellRot  = 90;
			oCombatManager.combatEnemyObject.spellFlip = -1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		
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
			oCombatManager.combatEnemyObject.spellRot  = 180;
			oCombatManager.combatEnemyObject.spellFlip = -1;
			cast = true;
		}
		// - - - - - - - - - - - - - - - - - - - - - - -
		
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
			oCombatManager.combatEnemyObject.spellRot  = 270;
			oCombatManager.combatEnemyObject.spellFlip = -1;
			cast = true;
		}
	break;
			
	// sprout
	case 4:
		coords = [
			[cursorX,     cursorY],
			[cursorX + 2, cursorY],
			[cursorX + 1, cursorY + 1],
		];
			
		// Check Spell: check for all grass
		pass = true;
		for (var i = 0; i < array_length_2d(coords, 0); i++){
			var c = coords[0, i];
			if (ds_grid_get(g, c[0], c[1]) != 3) {
				if (IsItem(c[0], c[1])) // allow items
					continue; // if item, continue to check next iteration
				else
					pass = false;
			}
		}
			
		//If Valid
		if (pass)
			cast = true;
	break;
		
	// tsunami
	case 5:
		var c;
		
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
			oCombatManager.combatEnemyObject.spellRot  = global.spellData[sp, spellC.Orientation];
			oCombatManager.combatEnemyObject.spellFlip = 1;
			cast = true;
		}
			
		// - - - - - - - - -
		
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
			oCombatManager.combatEnemyObject.spellRot  = global.spellData[sp, spellC.Orientation];
			oCombatManager.combatEnemyObject.spellFlip = -1;
			cast = true;
		}
	break;
		
	// brushfire
	case 6:
		// check rotation orientation
		switch(global.spellData[sp, spellC.Orientation]) {
			case 0:
				coords = [
					[cursorX,	  cursorY],
					[cursorX + 1, cursorY],
					[cursorX + 2, cursorY]
				];
			break;
			case 90:
				coords = [
					[cursorX,	  cursorY],
					[cursorX, cursorY + 1],
					[cursorX, cursorY + 2]
				];
			break;
			case 180:
				coords = [
					[cursorX,	  cursorY],
					[cursorX + 1, cursorY],
					[cursorX + 2, cursorY]
				];
			break;
			case 270:
				coords = [
					[cursorX,	  cursorY],
					[cursorX, cursorY + 1],
					[cursorX, cursorY + 2]
				];
			break;
		}
			
		// Check Spell: check for fire grass fire
		pass = false;
		var c = coords[0, 0];
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
		if (pass)
			cast = true;
	break;
		
	// thunderstorm
	case 7:
		coords = [
			[cursorX,	  cursorY],
			[cursorX, cursorY + 1],
		];
			
		// Check Spell: check for fire grass fire
		pass = false;
		var c = coords[0, 0];
		if (ds_grid_get(g, c[0], c[1]) == 4 || IsItem(c[0], c[1])) { // ignore items
			c = coords[0, 1];
			if (ds_grid_get(g, c[0], c[1]) == 2 || IsItem(c[0], c[1])) { // ignore items
				pass = true;
			}
		}
			
		//If Valid
		if (pass)
			cast = true;
	break;
}
	
//-----------------------------------------

if (cast)
	return (global.spellData[sp, spellC.SpellID]);	
else
	return -1;