/// @description Draw the static elements to the board UI
Input();

// Draw boarder
draw_sprite_ext(sGridBorder, 0, room_width / 2, 50, 1, 1, 0, c_white, 1);

// In spell book
if(oPuzzleBoard.inSpellBook) {
	// Press Right
	if (right) {
		draw_sprite_ext(sLeftArrow,  0, room_width / 2 - 40, 64, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, room_width / 2 + 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
	}
	// Press Left
	else if (left) {
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
else if (!oPuzzleBoard.inSpellBook) {
	draw_sprite_ext(sLeftArrow,  0, room_width / 2 - 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
	draw_sprite_ext(sRightArrow, 0, room_width / 2 + 40, 64, 1, 1, 0, make_color_rgb(29, 43, 83), 1);	
}	