/// @description A basic enemy AI that searches for the most powerful potential spell no matter what.
var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];

// Calculating the strongest spell
var strongestSpell;
var strongestSpellX;
var strongestSpellY;
var maxDam = 0;
var g = global.grid;

// check the grid for each spell in current enemies spell book
var data = oCombatManager.turnControllerObject.currentTurn.spellBook.data;
for (var i = 0; i < array_length_1d(data); i++) {
	
	// Update spell book index
	oCombatManager.turnControllerObject.currentTurn.spellBook.index = i;
	
	// Search through grid for current spell
	var csf = -1;
	for (var j = 0; j < oPuzzleBoard.gridWidth; j++) {
		for (var k = 0; k < oPuzzleBoard.gridHeight; k++) {
			
			// Move cursor to follow iteration loop
			global.gridIndexX = j;
			global.gridIndexY = k;
			
			// do not allow cursor index to move outside of grid
			if (global.gridIndexX + global.spellData[sp, spellC.CursorWidth] < oPuzzleBoard.gridWidth) {
				if (global.gridIndexY + global.spellData[sp, spellC.CursorHeight] < oPuzzleBoard.gridHeight) {
					
					// Spell found!
					var csf = AICheckSpellForms(); // returns spell ID
					if (csf != -1) {
						
						// Compute average potential damage
						var avgDam = (global.spellData[csf, spellC.DamageLow] + global.spellData[csf, spellC.DamageHigh]) / 2;
						
						// Store it, if this avg is greater
						if (avgDam >= maxDam) {
							// Update max damage
							maxDam = avgDam;
							
							// Store spell as current strongest
							strongestSpell  = csf;
							strongestSpellX = j;
							strongestSpellY = k;
						}
						
						// Break from first loop once spell found
						break;
					}	
				}
			}
		}
		// Break from second loop once spell found
		if (csf != -1)
			break;
	}	
}

// Set variables
oCombatManager.combatEnemyObject.searchedForSpell = true;
oCombatManager.combatEnemyObject.spellToCast	  = strongestSpell;
oCombatManager.combatEnemyObject.spellCursorX	  = strongestSpellX;
oCombatManager.combatEnemyObject.spellCursorY	  = strongestSpellY;
// rotation and flipping set in AICheckSpellForms();

// Navigate to spell and cast it
if (oCombatManager.combatEnemyObject.alarm[1] == -1)
	oCombatManager.combatEnemyObject.alarm[1] = 10;
oCombatManager.combatEnemyObject.spellBook.index = 0;