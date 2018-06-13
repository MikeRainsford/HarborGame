/// @description Draw the box with more information for the spells

if (oTurnController.playerTurn || oTurnController.player2Turn) {
	// Point to spell data
	if (oTurnController.playerTurn)
		var ind = global.spellBookIndex;
	else if (oTurnController.player2Turn)
		var ind = global.spellBook2Index;
	var dat = global.spellData;
	
	// Toggle more info box
	if (oPuzzleBoard.inSpellBook && action1Pressed)
		if (oPuzzleBoard.moreInfo)
			oPuzzleBoard.moreInfo = false;
		else
			oPuzzleBoard.moreInfo = true;
	else if (!oPuzzleBoard.inSpellBook)
		oPuzzleBoard.moreInfo = false;
}

// If moreInfo boolean is active
if (oPuzzleBoard.moreInfo) {
	// Draw frame
	image_speed = 0.2;
	draw_sprite(sMoreSpellInfo, image_index, room_width / 2, 50);	
	
	// Draw spell image
	var spr = asset_get_index("s" + string(dat[ind, 0]) + "Spell");
	image_speed = 0.05;
	draw_sprite_ext(spr, -1, room_width / 2 - 30, 65, 1, 1, 0, c_white, 1);
	
	// Draw spell title
	var c = c_white;
	var title = dat[ind, 0];
	draw_text_transformed_color(room_width / 2 - 42, 75, title, 0.20, 0.20, 0, c, c, c, c, 1.0);
	
	// Draw spell info
	var desc = dat[ind, 3];	
	draw_text_transformed_color(room_width / 2 - 42, 80, desc,  0.20, 0.20, 0, c, c, c, c, 1.0);
	
	// Draw more info
	for (var i = 0; i < array_length_1d(dat[ind, 22]); i++) {
		var info = dat[ind, 22];
		draw_text_transformed_color(room_width / 2 - 8, 60 + (i * 5), info[i], 0.20, 0.20, 0, c, c, c, c, 1.0);
	}
}