/// @description Randomly decide which decoration pieces to create in the character combat zones

var decorations = [
	oTree,
];

// Player1 decorations
var r = random_range(0, array_length_1d(decorations) - 1);
var playerDec = instance_create_layer(room_width / 2 - 31 - 17, room_height - 17, "BackgroundLayer", decorations[r]);
playerDec.image_xscale = 1;
playerDec.image_yscale = 1;

// Player2 decorations
var r2 = random_range(0, array_length_1d(decorations) - 1);
var enemyDec = instance_create_layer(room_width / 2 + 31 + 17, room_height - 17, "BackgroundLayer", decorations[r]);
enemyDec.image_xscale = -1;
enemyDec.image_yscale =  1;