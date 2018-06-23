var ind			= oCombatManager.combatEnemyObject.spellBook.index;
var sp			= oCombatManager.combatEnemyObject.spellBook.data[ind];
var totalDamage = 0;
var j = argument0;
var k = argument1;

// Create new grid to track chaining
chainGrid = ds_grid_create(oPuzzleBoard.gridWidth, oPuzzleBoard.gridHeight);

// Recursively path find and count pieces
RecursiveChainCount(j, k, global.spellData[sp, spellC.PieceToChain], chainGrid);

totalDamage = oCombatManager.combatEnemyObject.chainCount;
oCombatManager.combatEnemyObject.chainCount = 0; // reset chain counter
ds_grid_destroy(chainGrid);
return totalDamage;