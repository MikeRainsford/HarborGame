if (instance_exists(oPlayer1Select)) {
	image_speed = 0.2;
	draw_sprite_ext(sBackgroundSquares, image_index, 0, 0, 1.5, 1.5, 0, c_white, 1);
	//image_speed = 0;
	//draw_sprite_ext(sLand, 0, oPlayer1Select.x, oPlayer1Select.y + 3, 2, 2, 0, c_white, 1);
	//draw_sprite_ext(sLand, 0, oPlayer2Select.x, oPlayer2Select.y + 3, 2, 2, 0, c_white, 1);
	
	draw_text_transformed(room_width / 2 - 36, 16, "Character Select", .5, .5, 0);
	draw_text_transformed(oPlayer1Select.x - 4, oPlayer1Select.y + 16, "P1", .5, .5, 0);
	draw_text_transformed(oPlayer2Select.x - 4, oPlayer2Select.y + 16, "P2", .5, .5, 0);
	if (keyboard_check_pressed(ord("D"))) {
		draw_sprite_ext(sLeftArrow,  0, oPlayer1Select.x - 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, oPlayer1Select.x + 10, oPlayer2Select.y + 21, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
	}
	else if (keyboard_check_pressed(ord("A"))) {
		draw_sprite_ext(sLeftArrow,  0, oPlayer1Select.x - 10, oPlayer2Select.y + 21, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
		draw_sprite_ext(sRightArrow, 0, oPlayer1Select.x + 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sLeftArrow,  0, oPlayer1Select.x - 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, oPlayer1Select.x + 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);	
	}
	
	if (keyboard_check_pressed(vk_right)) {
		draw_sprite_ext(sLeftArrow,  0, oPlayer2Select.x - 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, oPlayer2Select.x + 10, oPlayer2Select.y + 21, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
	}
	else if (keyboard_check_pressed(vk_left)) {
		draw_sprite_ext(sLeftArrow,  0, oPlayer2Select.x - 10, oPlayer2Select.y + 21, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
		draw_sprite_ext(sRightArrow, 0, oPlayer2Select.x + 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sLeftArrow,  0, oPlayer2Select.x - 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sRightArrow, 0, oPlayer2Select.x + 10, oPlayer2Select.y + 21, 1, 1, 0, c_white, 1);	
	}
	
	// draw checks
	if (oPlayer1Select.ready)
		draw_sprite_ext(sCheck, 0, oPlayer1Select.x + 15, oPlayer1Select.y - 16, 1, 1, 0, c_white, 1);
		
	if (oPlayer2Select.ready)
		draw_sprite_ext(sCheck, 0, oPlayer2Select.x - 15, oPlayer2Select.y - 16, 1, 1, 0, c_white, 1);
}