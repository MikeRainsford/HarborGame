var newW = argument0;
var newH = argument1;

var oldW = oPuzzleBoard.gridWidth;
var oldH = oPuzzleBoard.gridHeight;

var newGrid = ds_grid_create(newW, newH);

for (var i = 0; i < newW; i++) {
	for (var j = 0; j < newH; j++) {
		ds_grid_set(newGrid, i, j, RandomPiece());
	}
}

oPuzzleBoard.gridWidth  = newW;
oPuzzleBoard.gridHeight = newH;
global.grid = newGrid;
ds_grid_destroy(newGrid);