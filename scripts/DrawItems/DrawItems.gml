/// @description Create the puzzle pieces and update grid position
// Individual pieces are responsible for their own logic and drawing

var g = global.grid;

// Create shapes
for (var i = 0; i < oPuzzleBoard.gridWidth; i++){
	for (var j = 0; j < oPuzzleBoard.gridHeight; j++){
		switch(ds_grid_get(g, i, j)){
			// Potion----------
			case 5:
				image_speed = 0.4;
				draw_sprite_ext(sPotionItem,  image_index,
					(i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
					(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
					1, 1, 0, c_white, 1);
			break;
			
			case 15:
				draw_sprite_ext(sPotionItemWhite,  0,
					(i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
					(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
					1, 1, 0, c_white, 1);
			break;
			
			case 25:
			break;
			
			// Shuffle----------
			case 6:
				image_speed = 0.4;
				draw_sprite_ext(sShuffleItem,  image_index,
					(i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
					(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
					1, 1, 0, c_white, 1);
			break;
			
			case 16:
				draw_sprite_ext(sShuffleItemWhite,  0,
					(i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
					(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
					1, 1, 0, c_white, 1);
			break;
			
			case 26:
			break;
			
			// Bottle----------
			case 7:
				image_speed = 0.4;
				draw_sprite_ext(sBottleItem,  image_index,
					(i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
					(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
					1, 1, 0, c_white, 1);
			break;
			
			case 17:
				draw_sprite_ext(sBottleItemWhite,  0,
					(i * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
					(j * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
					1, 1, 0, c_white, 1);
			break;
			
			case 27:
			break;
		}
	}
}