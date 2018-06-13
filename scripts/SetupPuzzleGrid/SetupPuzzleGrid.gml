/// @description Set puzzle grid to all random values
var g = global.grid;
for (var i = 0; i < oPuzzleBoard.gridWidth; i++){
	for (var j = 0; j < oPuzzleBoard.gridHeight; j++){
		ds_grid_set(g, i, j, RandomPiece());
	}
}