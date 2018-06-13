/// @description Draw all the elements that make up the spell book that are dynamic and changing

Input();

// Player Turns
if (oTurnController.playerTurn || oTurnController.player2Turn) {
	if (oTurnController.playerTurn)
		var ref = global.spellBookIndex;
	else if (oTurnController.player2Turn)
		var ref = global.spellBook2Index;
	var dat = global.spellData;
	
	// Draw Spell Image
	if (SpellChar("canRotate", dat, ref))
		var rot	= SpellChar("orientation", dat, ref);
	else 
		var rot = 0;
	var spr = asset_get_index("s" + string(SpellChar("spellName", dat, ref)) + "Spell");
	image_speed = 0.05;
	draw_sprite_ext(spr, -1, room_width / 2 - 20, 63, 1, 1, rot, c_white, 1);
	
	// Draw White Outline for Spell
	var sprStill = asset_get_index("s" + string(SpellChar("spellName", dat, ref)) + "SpellFrame");
	if (oPuzzleBoard.inSpellBook)
		draw_sprite_ext(sprStill, 0, room_width / 2 - 20, 63, 1, 1, rot, c_white, 1);
	
	// Update color if player is in spellBook
	if (oPuzzleBoard.inSpellBook)
		var c = c_white;
	else
		var c = make_color_rgb(29, 43, 83);
	
	// Draw Spell title
	var title = SpellChar("spellName", dat, ref);
	draw_text_transformed_color(room_width / 2 - 2, 57, title, 0.30, 0.30, 0, c, c, c, c, 1.0);	
	
	// Draw spell info 
	var desc = SpellChar("spellInfo", dat, ref);
	draw_text_transformed_color(room_width / 2 - 2, 62, desc,  0.30, 0.30, 0, c, c, c, c, 1.0);		
	
	// Draw rotate button
	if (SpellChar("canRotate", dat, ref)) {
		var framex = room_width / 2 - 20;
		var framey = 63;
		if (oPuzzleBoard.inSpellBook) {
			if (rotateLeftHold || rotateRightHold) {
				image_speed = 0;
				draw_sprite_ext(sRotate, 7, framex - 10, framey - 5, .5, .5, 0, c_white, 1);	
			}
			else {	
				image_speed = 0.2;
				draw_sprite_ext(sRotate, image_index, framex - 10, framey - 5, .5, .5, 0, c_white, 1);
			}
		}
		else {
			image_speed = 0;
			draw_sprite_ext(sRotate, 7, framex - 10, framey - 5, .5, .5, 0, make_color_rgb(29, 43, 83), 1);
		}
	}
}