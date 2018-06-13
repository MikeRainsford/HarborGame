/// @description Bottle Rocket Item

// Wait for attacking to finish
if (global.attacking) {
	alarm[0] = 1;	
}
// Attacking is done
else {
	var r = choose(0, 1, 2, 3);

	// Left
	if (r == 0) {
		var bot = instance_create_layer((gridX * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
										(gridY * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
										"GameLayer",
										oBottleRocket);
		bot.dir = "left";
		bot.sprite_index = sBottleItemHorizontal;
		bot.image_speed  = 0.5;
		bot.image_index  = 0;
		bot.image_xscale = 1;
		bot.gridX		 = gridX;
		bot.gridY		 = gridY;
		
		visible = false;
	}
	// Right
	else if (r == 1) {
		var bot = instance_create_layer((gridX * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
										(gridY * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
										"GameLayer",
										oBottleRocket);
		bot.dir = "right";
		bot.sprite_index = sBottleItemHorizontal;
		bot.image_speed  = 0.5;
		bot.image_index  = 0;
		bot.image_xscale = -1;
		bot.gridX		 = gridX;
		bot.gridY		 = gridY;
		
		visible = false;
	}
	// Up
	else if (r == 2) {
		var bot = instance_create_layer((gridX * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
										(gridY * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
										"GameLayer",
										oBottleRocket);
		bot.dir = "up";
		bot.sprite_index = sBottleItemVertical;
		bot.image_speed  = 0.5;
		bot.image_index  = 0;
		bot.image_yscale = -1;
		bot.gridX		 = gridX;
		bot.gridY		 = gridY;
		
		visible = false;
	}
	// Down 
	else if (r == 3) {
		var bot = instance_create_layer((gridX * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridXOffset,
										(gridY * oPuzzleBoard.gridPadding) + oPuzzleBoard.gridYOffset,
										"GameLayer",
										oBottleRocket);
		bot.dir = "down";
		bot.sprite_index = sBottleItemVertical;
		bot.image_speed  = 0.5;
		bot.image_index  = 0;
		bot.image_yscale = 1;
		bot.gridX		 = gridX;
		bot.gridY		 = gridY;
		
		visible = false;
	}
	instance_destroy();
}