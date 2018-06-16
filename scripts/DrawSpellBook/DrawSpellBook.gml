/// @description Draw all the elements that make up the spell book that are dynamic and changing
Input();		
		
var ind = oCombatManager.turnControllerObject.currentTurn.spellBook.index;
var sp  = oCombatManager.turnControllerObject.currentTurn.spellBook.data[ind];

// Draw Spell Image
if (global.spellData[sp, spellC.CanRotate])
	var rot	= global.spellData[sp, spellC.Orientation];
else 
	var rot = 0;
	
var spr = asset_get_index("s" + string(global.spellData[sp, spellC.SpellName]) + "Spell");
image_speed = 0.05;
draw_sprite_ext(spr, -1, room_width / 2 - 20, 63, 1, 1, rot, c_white, 1);

	
// Draw White Outline for Spell
var sprStill = asset_get_index("s" + string(global.spellData[sp, spellC.SpellName]) + "SpellFrame");
if (oSpellBookUI.inSpellBook)
	draw_sprite_ext(sprStill, 0, room_width / 2 - 20, 63, 1, 1, rot, c_white, 1);
	
// Update color if player is in spellBook
if (oSpellBookUI.inSpellBook)
	var c = c_white;
else
	var c = make_color_rgb(29, 43, 83);
	
// Draw Spell title
var title = global.spellData[sp, spellC.SpellName];
draw_text_transformed_color(room_width / 2 - 2, 57, title, 0.30, 0.30, 0, c, c, c, c, 1.0);	
	
// Draw spell info 
var desc = global.spellData[sp, spellC.SpellInfo];
draw_text_transformed_color(room_width / 2 - 2, 62, desc,  0.30, 0.30, 0, c, c, c, c, 1.0);	

// Draw rotate button
if (global.spellData[sp, spellC.CanRotate]) {
	var framex = room_width / 2 - 20;
	var framey = 63;
	if (oSpellBookUI.inSpellBook) {
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

// Draw Spell Book Arrows
// In spell book
if(oSpellBookUI.inSpellBook) {
	// Press Right
	if (right) {
		if (rightPressed)
			audio_play_sound(soSpellBookTurn, 0, 0);
		draw_sprite_ext(sLeftArrow,  0, room_width / 2 - 40, 64, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, room_width / 2 + 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
	}
	// Press Left
	else if (left) {
		if (leftPressed)
			audio_play_sound(soSpellBookTurn, 0, 0);
		draw_sprite_ext(sLeftArrow,  0, room_width / 2 - 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
		draw_sprite_ext(sRightArrow, 0, room_width / 2 + 40, 64, 1, 1, 0, c_white, 1);
	}
	// No Key Press
	else {
		draw_sprite_ext(sLeftArrow,  0, room_width / 2 - 40, 64, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, room_width / 2 + 40, 64, 1, 1, 0, c_white, 1);	
	}
}
// Not in spell book
else if (!oSpellBookUI.inSpellBook) {
	draw_sprite_ext(sLeftArrow,  0, room_width / 2 - 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
	draw_sprite_ext(sRightArrow, 0, room_width / 2 + 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);	
}	