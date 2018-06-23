var totalDamage = 0;
var j = argument0;
var k = argument1;

// Create new grid to track chaining
chainGrid = ds_grid_create(oPuzzleBoard.gridWidth, oPuzzleBoard.gridHeight);

// Recursively path find and count pieces
RecursiveChainCount(j, k, chainGrid);

totalDamage = oCombatManager.combatEnemyObject.chainCount;

oCombatManager.combatEnemyObject.chainCount = 0; // reset chain counter
ds_grid_destroy(chainGrid);
return totalDamage;