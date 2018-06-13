/// @description Chain Delete Old Links
// Delete old links in the chain
for (var i = 0; i < ds_grid_width(global.grid); i++) {
	for (var j = 0; j < ds_grid_height(global.grid); j++) {
			if (ds_grid_get(global.grid, i, j) >= 20) {
				ds_grid_set(global.grid, i, j, 0);	
				
				// Spawn score point
				var p = instance_create_layer((i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset + random_range(-5, 5),
											  (j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset + random_range(-5, 5),
											  "PointsLayer", oText);	
				p.pointValue = 1;
			}
	}
}