/// @description A basic enemy AI that searches for the most powerful potential spell no matter what.

// List of spells that are found
var found  = ds_list_create();
var foundx = ds_list_create();
var foundy = ds_list_create();

var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];

oSpellBookUI.inSpellBook = false;

// check the grid for each spell
var data = oCombatManager.turnControllerObject.currentTurn.spellBook.data;
for (var i = 0; i < array_length_1d(data); i++) {
	// Update spell book index
	oCombatManager.turnControllerObject.currentTurn.spellBook.index = i;
	show_debug_message(oCombatManager.turnControllerObject.currentTurn.spellBook.index);
	
	var g = global.grid;
	var csf = -1;
	for (var j = 0; j < oPuzzleBoard.gridWidth; j++) {
		for (var k = 0; k < oPuzzleBoard.gridHeight; k++) {
			// Move cursor to follow iteration loop
			global.gridIndexX = j;
			global.gridIndexY = k;
			
			// do not allow cursor index to move outside of grid
			if (global.gridIndexX < oPuzzleBoard.gridWidth - global.spellData[sp, spellC.CursorWidth]) {
				if (global.gridIndexY < oPuzzleBoard.gridHeight - global.spellData[sp, spellC.CursorHeight]) {
					// Spell found!
					var csf = CheckSpellForms();
					if (csf != -1) {
						ds_list_add(found, csf);
						ds_list_add(foundx, i);
						ds_list_add(foundy, j);
						//show_message("added: " + string(csf) + " to list.");
						break;
					}	
				}
			}
		}
		if (csf != -1)
			break;
	}	
}

var maxDam = 0;
var spellToCast = -1;
for (var i = 0; i < ds_list_size(found); i++) {
	// Compute average potential damage
	var avgDam = (global.spellData[ds_list_find_value(found, i), spellC.DamageLow] + 
				global.spellData[ds_list_find_value(found, i), spellC.DamageHigh]) / 2;
				
	// Store it, if this avg is greater
	if (avgDam > maxDam)
		spellToCast = ds_list_find_value(found, i);
}
// Gather coordinates, and cast spell... somehow....


oSpellBookUI.inSpellBook = true;

ds_list_destroy(found);
ds_list_destroy(foundx);
ds_list_destroy(foundy);