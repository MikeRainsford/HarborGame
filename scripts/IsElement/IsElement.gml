/// @description Checks to see if piece at current index is an element

/// @param iIndex to check
/// @param jIndex to check

var i = argument0;
var j = argument1;

var check = ds_grid_get(global.grid, i, j) mod 10;

if (check < 5)
	return true;
else
	return false;