/// @description Recursively Counts The Damage Current Spell Will Do With Chaining
/// @function RecursiveChainCount
/// @param x
/// @param y
/// @param pieceToChain
/// @param chainGrid

var xx	= argument0; // x position of current index
var yy	= argument1; // y position of current index
var p	= argument2; // piece that is chaining
var cg  = argument3;
var g	= global.grid;

// check if current spot is our chain piece
if (ds_grid_get(g, xx, yy) == p || IsItem(xx, yy)) {
	ds_grid_set(cg, xx, yy, p);
	oCombatManager.combatEnemyObject.chainCount++;
	
	// Good to keep going
	// Check left
	if (xx - 1 >= 0) {
		if (ds_grid_get(g, xx - 1, yy) == p)
			if (ds_grid_get(cg, xx - 1, yy) != p) {
				RecursiveChainCount(xx - 1, yy, p, cg);
			}
	}
	// Check right 
	if (xx + 1 <= oPuzzleBoard.gridWidth - 1) {
		if (ds_grid_get(g, xx + 1, yy) == p)
			if (ds_grid_get(cg, xx + 1, yy) != p) {
				RecursiveChainCount(xx + 1, yy, p, cg);
			}
	}
	// Check up
	if (yy - 1 >= 0) {
		if (ds_grid_get(g, xx, yy - 1) == p)
			if (ds_grid_get(cg, xx, yy - 1) != p) {
				RecursiveChainCount(xx, yy - 1, p, cg);
			}
	}
	// Check down
	if (yy + 1 <= oPuzzleBoard.gridHeight - 1) {
		if (ds_grid_get(g, xx, yy + 1) == p)
			if (ds_grid_get(g, xx, yy + 1) != p) {
				RecursiveChainCount(xx, yy + 1, p, cg);
			}
	}
	return;	
}
else
	return;